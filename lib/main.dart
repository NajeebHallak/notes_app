import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_app.dart';

void main() {
  runApp(const NptesApp());
}

class NptesApp extends StatelessWidget {
  const NptesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {NotesAppView.id: (context) => const NotesAppView()},
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      initialRoute: NotesAppView.id,
    );
  }
}
