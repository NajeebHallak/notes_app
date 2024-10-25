import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/model/notes_model.dart';
import 'package:notes_app/widget/button_add_notes_in_button_sheet.dart';
import 'package:notes_app/widget/custom_text_fild.dart';

class CustomFormFild extends StatefulWidget {
  const CustomFormFild({
    super.key,
  });

  @override
  State<CustomFormFild> createState() => _CustomFormFildState();
}

GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
NotesModel? notesModel;
String? title, subTitle;

class _CustomFormFildState extends State<CustomFormFild> {
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
                notesModel = NotesModel(
                    title: title!,
                    subTitle: subTitle!,
                    color: Colors.blue.value,
                    date: DateTime.now().toString());
                BlocProvider.of<AddNoteCubitCubit>(context)
                    .addNote(notesModel!);
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
