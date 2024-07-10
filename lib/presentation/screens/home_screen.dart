import 'package:flutter/material.dart';
import 'package:flutter_notes_app/presentation/providers/notes_provider.dart';
import 'package:flutter_notes_app/presentation/screens/detail_screen.dart';
import 'package:flutter_notes_app/presentation/screens/form_screen.dart';
import 'package:flutter_notes_app/presentation/widgets/shared/card_notes.dart';
import 'package:flutter_notes_app/presentation/widgets/shared/custom_app_bar.dart';
import 'package:flutter_notes_app/utils/navigation.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final notesProvider = context.watch<NotesProvider>();

    void navigateCard() {
      Navigation.navigateTo(context, const DetailScreen());
    }

    void navigateCreateNote() {
      Navigation.navigateTo(context, const FormScreen());
    }

    return Scaffold(
      appBar: const CustomAppBar(title: 'Notas'),
      body: Center(
        child: notesProvider.notes.isEmpty
            ? const Text(
                'No hay notas 🥺',
                style: TextStyle(fontSize: 20),
              )
            : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: notesProvider.notes.length,
                      itemBuilder: (context, index) {
                        final note = notesProvider.notes[index];
                        return CardNotes(
                          title: note['title']!,
                          onPressed: () => notesProvider.remove(note['id']!),
                          onTap: () => navigateCard(),
                        );
                      },
                    ),
                  ),
                ],
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => navigateCreateNote(),
        child: const Icon(Icons.create),
      ),
    );
  }
}
