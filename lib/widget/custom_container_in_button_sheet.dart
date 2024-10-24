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
        child: CustomFormFild(),
      ),
    );
  }
}

class CustomFormFild extends StatefulWidget {
  const CustomFormFild({
    super.key,
  });

  @override
  State<CustomFormFild> createState() => _CustomFormFildState();
}

GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

class _CustomFormFildState extends State<CustomFormFild> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTetFormFild(
            onSaved: (value) {
              title = value;
            },
            maxLines: 1,
            hintText: 'Title',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTetFormFild(
            onSaved: (value) {
              subTitle = value;
            },
            maxLines: 5,
            hintText: 'Content',
          ),
          const SizedBox(
            height: 100,
          ),
          AddNotesInButtonSheet(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
