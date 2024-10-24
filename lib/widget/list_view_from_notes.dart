import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_container_notes.dart';

class ListViewFromNotes extends StatelessWidget {
  const ListViewFromNotes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => const CustomContainerNotes(),
      ),
    );
  }
}
