import 'package:flutter/material.dart';
import '../widget/custom_app_bar.dart';
import '../widget/custom_floting_action_button.dart';
import '../widget/list_view_from_notes.dart';

class NotesAppView extends StatelessWidget {
  const NotesAppView({super.key});
  static String id = 'NotesApp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        titl: ' Notes',
        icon: Icons.search,
      ),
      body: const ListViewFromNotes(),
      floatingActionButton: const CustomFlotingActionButton(),
    );
  }
}
