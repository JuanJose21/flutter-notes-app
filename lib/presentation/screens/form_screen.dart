import 'package:flutter/material.dart';
import 'package:flutter_notes_app/presentation/widgets/form/form_notes.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario'),
      ),
      body: const Center(
        child: FormNotes(),
      ),
    );
  }
}
