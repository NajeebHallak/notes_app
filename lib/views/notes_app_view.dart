import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/LoadeNoteCubit/loade_the_note_cubit.dart';
import '../widget/custom_app_bar.dart';
import '../widget/custom_floting_action_button.dart';
import '../widget/list_view_from_notes.dart';

class NotesAppView extends StatelessWidget {
  const NotesAppView({super.key});
  static String id = 'NotesApp';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoadeTheNoteCubit(),
      child: Scaffold(
        appBar: CustomAppBar(
          titl: ' Notes',
          icon: Icons.search,
        ),
        body: const ListViewFromNotes(),
        floatingActionButton: const CustomFlotingActionButton(),
      ),
    );
  }
}
