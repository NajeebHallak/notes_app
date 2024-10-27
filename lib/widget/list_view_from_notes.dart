import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/LoadeNoteCubit/loade_the_note_cubit.dart';
import 'package:notes_app/widget/bloc_builder_for_loade_the_note.dart';

class ListViewFromNotes extends StatefulWidget {
  const ListViewFromNotes({
    super.key,
  });

  @override
  State<ListViewFromNotes> createState() => _ListViewFromNotesState();
}

class _ListViewFromNotesState extends State<ListViewFromNotes> {
  @override
  void initState() {
    BlocProvider.of<LoadeTheNoteCubit>(context).LoadeTheNote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          BlocBuilderForLoadeTheNote(),
        ],
      ),
    );
  }
}
