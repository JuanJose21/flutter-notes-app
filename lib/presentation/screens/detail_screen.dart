import 'package:flutter/material.dart';
import 'package:flutter_notes_app/presentation/providers/notes_provider.dart';
import 'package:flutter_notes_app/presentation/screens/form_screen.dart';
import 'package:flutter_notes_app/utils/navigation.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    required this.idNote,
  });

  final String idNote;

  @override
  Widget build(BuildContext context) {
    final notesProvider = context.watch<NotesProvider>();
    final note = notesProvider.getNote(idNote);

    // Si la nota no tiene id, es porque se ha eliminado y se redirige a la pantalla anterior
    if (note.id == '') {
      Future.delayed(Duration.zero, () async {
        Navigation.navigateBack(context);
      });
    }

    void navigateEditNote() {
      Navigation.navigateTo(context, FormScreen(idNote: idNote));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(note.title,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            onPressed: () => notesProvider.remove(idNote),
            icon: Icon(
              Icons.delete,
              color: Colors.red[300],
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Text(note.description,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 15,
              ))
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => navigateEditNote(),
        child: const Icon(Icons.edit_document),
      ),
    );
  }
}
