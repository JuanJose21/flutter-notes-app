import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_notes_app/presentation/screens/home_screen.dart';
import 'package:flutter_notes_app/main.dart';

void main() {
  testWidgets('Verificar que el MaterialApp se construya',
      (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());

    expect(find.byType(MaterialApp), findsOneWidget);
  });

  testWidgets('Verificar que la aplicación se construya correctamente',
      (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());

    expect(find.byType(HomeScreen), findsOneWidget);
  });
}
