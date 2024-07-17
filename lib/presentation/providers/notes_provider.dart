import 'package:flutter/material.dart';
import 'package:flutter_notes_app/presentation/models/notes_model.dart';

class NotesProvider extends ChangeNotifier {
  final List<Note> _notes = [];

  /// Devuelve una copia de la lista de notas.
  List<Note> get notes => _notes;

  /// Devuelve una nota específica basada en su ID.
  /// Si no se encuentra la nota, devuelve una nota vacía.
  ///
  /// Parámetros:
  /// - `id`: ID de la nota que se quiere obtener.
  Note getNote(String id) {
    return _notes.firstWhere(
      (note) => note.id == id,
      orElse: () => Note(id: '', title: '', description: ''),
    );
  }

  /// Agrega una nueva nota a la lista de notas.
  ///
  /// Parámetros:
  /// - `title`: Título de la nueva nota.
  /// - `description`: Descripción de la nueva nota.
  void add(String title, String description) {
    _notes.add(
      Note(
        id: DateTime.now().toString(),
        title: title,
        description: description,
      ),
    );
    notifyListeners();
  }

  /// Actualiza una nota existente con nuevos valores de título y descripción.
  ///
  /// Parámetros:
  /// - `id`: ID de la nota que se quiere actualizar.
  /// - `title`: Nuevo título de la nota.
  /// - `description`: Nueva descripción de la nota.
  void update(String id, String title, String description) {
    final index = _notes.indexWhere((note) => note.id == id);
    if (index != -1) {
      _notes[index] = Note(
        id: id,
        title: title,
        description: description,
      );
      notifyListeners();
    }
  }

  /// Elimina una nota de la lista basada en su ID.
  ///
  /// Parámetros:
  /// - `id`: ID de la nota que se quiere eliminar.
  void remove(String id) {
    _notes.removeWhere((note) => note.id == id);
    notifyListeners();
  }
}
