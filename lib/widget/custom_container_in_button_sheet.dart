import 'package:flutter/material.dart';
import 'package:notes_app/widget/button_add_notes_in_button_sheet.dart';

import 'custom_text_fild.dart';

class CustomContainerInButtonSheet extends StatelessWidget {
  const CustomContainerInButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTetFild(
              heightFild: 20,
              hintText: 'Title',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTetFild(
              heightFild: 55,
              hintText: 'Content',
            ),
            SizedBox(
              height: 100,
            ),
            AddNotesInButtonSheet(),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
