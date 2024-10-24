import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constans.dart';
import 'package:notes_app/views/edit_notes_view.dart';
import 'package:notes_app/views/notes_app_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox (kPrimaryBox);
  runApp(const NptesApp());
}

class NptesApp extends StatelessWidget {
  const NptesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        NotesAppView.id: (context) => const NotesAppView(),
        EditNotesView.id: (context) => const EditNotesView(),
      },
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      initialRoute: NotesAppView.id,
    );
  }
}
