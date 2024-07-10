import 'package:flutter/material.dart';
import 'package:flutter_notes_app/presentation/widgets/form/form_notes.dart';

class FormScreen extends StatelessWidget {
  final String idNote;
  const FormScreen({super.key, this.idNote = ''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(idNote.isNotEmpty ? 'Editar nota' : 'Crear nota'),
      ),
      body: Center(
        child: FormNotes(idNote: idNote),
      ),
    );
  }
}
