import 'package:flutter/material.dart';

import 'package:notes_app/model/notes_model.dart';
import 'package:notes_app/views/edit_notes_view.dart';

import '../widget/custom_app_bar.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static String id = 'NoteView';
  @override
  Widget build(BuildContext context) {
    NotesModel notesModel =
        ModalRoute.of(context)!.settings.arguments as NotesModel;
    return Scaffold(
      appBar: CustomAppBar(
        titl: notesModel.title,
        icon: Icons.edit,
        onPressed: () {
          Navigator.pushNamed(context, EditNotesView.id, arguments: notesModel);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Text(
          notesModel.subTitle,
          style: const TextStyle(fontSize: 35),
        ),
      ),
    );
  }
}
