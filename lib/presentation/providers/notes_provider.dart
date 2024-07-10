import 'package:flutter/material.dart';

class NotesProvider extends ChangeNotifier {
  final List<Map<String, String>> _notes = [];

  List<Map<String, String>> get notes => _notes;

  void add(String title, String description) {
    _notes.add({
      'title': title,
      'description': description,
    });
    notifyListeners();
  }

  void remove(String id) {
    _notes.removeWhere((element) => element['id'] == id);
    notifyListeners();
  }
}
