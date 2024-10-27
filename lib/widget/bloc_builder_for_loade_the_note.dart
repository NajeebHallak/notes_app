import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/widget/custom_container_notes.dart';

import '../cubit/LoadeNoteCubit/loade_the_note_cubit.dart';
import '../model/notes_model.dart';

class BlocBuilderForLoadeTheNote extends StatelessWidget {
  const BlocBuilderForLoadeTheNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadeTheNoteCubit, LoadeTheNoteState>(
      builder: (context, state) {
        List<NotesModel> notesModel =
            BlocProvider.of<LoadeTheNoteCubit>(context).notesModel!;
        return Expanded(
          child: ListView.builder(
            itemCount: notesModel.length,
            itemBuilder: (context, index) =>
                CustomContainerNotes(notesModel: notesModel[index]),
          ),
        );
      },
    );
  }
}
