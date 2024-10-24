import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/constans.dart';
import '../widget/custom_app_bar.dart';
import '../widget/custom_container_in_button_sheet.dart';
import '../widget/list_view_from_notes.dart';

class NotesAppView extends StatelessWidget {
  const NotesAppView({super.key});
  static String id = 'NotesApp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: const ListViewFromNotes(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => const CustomContainerInButtonSheet(),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
