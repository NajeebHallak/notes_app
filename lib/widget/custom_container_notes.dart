import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/model/notes_model.dart';
import 'package:notes_app/views/edit_notes_view.dart';

import '../cubit/LoadeNoteCubit/loade_the_note_cubit.dart';

class CustomContainerNotes extends StatelessWidget {
  const CustomContainerNotes({super.key, required this.notesModel});
  final NotesModel notesModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNotesView.id);
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(notesModel.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                notesModel.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  notesModel.subTitle,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: IconButton(
                  onPressed: () {
                    notesModel.delete();
                    BlocProvider.of<LoadeTheNoteCubit>(context).LoadeTheNote();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ),
            Text(
              notesModel.date,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
