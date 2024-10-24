import 'package:flutter/material.dart';
import '../widget/custom_app_bar.dart';
import '../widget/list_view_from_notes.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  static String id = 'NotesApp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            ListViewFromNotes(),
          ],
        ),
      ),
    );
  }
}
