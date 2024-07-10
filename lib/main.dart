import 'package:flutter/material.dart';
import 'package:flutter_notes_app/presentation/providers/notes_provider.dart';
import 'package:flutter_notes_app/presentation/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => NotesProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.yellow.shade800,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
