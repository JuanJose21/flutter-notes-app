import 'package:flutter/material.dart';
import 'package:flutter_notes_app/presentation/providers/notes_provider.dart';
import 'package:flutter_notes_app/presentation/widgets/form/button_field.dart';
import 'package:flutter_notes_app/presentation/widgets/form/input_field.dart';
import 'package:provider/provider.dart';

class FormNotes extends StatefulWidget {
  const FormNotes({super.key, this.idNote = ''});

  final String idNote;

  @override
  State<FormNotes> createState() => _FormNotesState();
}

class _FormNotesState extends State<FormNotes> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final notesProvider = context.watch<NotesProvider>();
    final bool isEdit = widget.idNote.isNotEmpty;

    if (isEdit) {
      final note = notesProvider.getNote(widget.idNote);
      titleController.text = note['title']!;
      descriptionController.text = note['description']!;
    }

    void addOrEditNote() {
      if (!_formKey.currentState!.validate()) return;

      final title = titleController.text;
      final description = descriptionController.text;

      if (isEdit) {
        notesProvider.update(widget.idNote, title, description);
      } else {
        notesProvider.add(title, description);
      }

      Navigator.pop(context);
    }

    return Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              InputField(
                title: 'Título',
                control: titleController,
              ),
              InputField(
                title: 'Descripción',
                control: descriptionController,
                maxLines: 5,
              ),
              ButtonField(
                  text: isEdit ? 'Editar' : 'Guardar',
                  onPressed: () => addOrEditNote())
            ],
          ),
        ));
  }
}
