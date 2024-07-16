import 'package:flutter/material.dart';
import 'package:flutter_notes_app/presentation/models/notes_model.dart';

class NotesProvider extends ChangeNotifier {
  final List<Note> _notes = [];

  List<Note> get notes => _notes;

  Note getNote(String id) {
    return _notes.firstWhere(
      (note) => note.id == id,
      orElse: () => Note(id: '', title: '', description: ''),
    );
  }

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

  void remove(String id) {
    _notes.removeWhere((note) => note.id == id);
    notifyListeners();
  }
}
