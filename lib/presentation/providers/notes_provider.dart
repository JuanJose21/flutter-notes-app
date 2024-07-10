import 'package:flutter/material.dart';

class NotesProvider extends ChangeNotifier {
  final List<Map<String, String>> _notes = [];

  List<Map<String, String>> get notes => _notes;

  getNote(String id) {
    final note = _notes.firstWhere(
      (element) => element['id'] == id,
      orElse: () => {},
    );
    return note;
  }

  void add(String title, String description) {
    _notes.add({
      'id': DateTime.now().toString(),
      'title': title,
      'description': description,
    });
    notifyListeners();
  }

  void update(String id, String title, String description) {
    final index = _notes.indexWhere((element) => element['id'] == id);
    _notes[index] = {
      'id': id,
      'title': title,
      'description': description,
    };
    notifyListeners();
  }

  void remove(String id) {
    _notes.removeWhere((element) => element['id'] == id);
    notifyListeners();
  }
}
