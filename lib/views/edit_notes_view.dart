import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/LoadeNoteCubit/loade_the_note_cubit.dart';
import 'package:notes_app/model/notes_model.dart';
import 'package:notes_app/widget/custom_app_bar.dart';
import '../widget/custom_text_fild.dart';
import '../widget/list_view_color_edit.dart';

class EditNotesView extends StatefulWidget {
  const EditNotesView({
    super.key,
  });

  static String id = 'EditNotesView';

  @override
  State<EditNotesView> createState() => _EditNotesViewState();
}

class _EditNotesViewState extends State<EditNotesView> {
  String? newTitle, newSubTitle;
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    NotesModel notesModel =
        ModalRoute.of(context)!.settings.arguments as NotesModel;
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Scaffold(
        appBar: CustomAppBar(
          onPressed: () {
            if (formkey.currentState!.validate()) {
              confirmTheEditing(notesModel, context);
            } else {
              autovalidateMode = AutovalidateMode.always;
            }
          },
          titl: ' Edit Notes',
          icon: Icons.check,
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const SizedBox(
                height: 45,
              ),
              CustomTetFormFild(
                validator: (value) {
                  if (value == null) {
                    return null;
                  }
                  if (value.length > 15) {
                    return 'The titile text is long ';
                  } else {
                    return null;
                  }
                },
                onChanged: (value) {
                  newTitle = value;
                },
                maxLines: 1,
                hintText: notesModel.title,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTetFormFild(
                onChanged: (value) {
                  newSubTitle = value;
                },
                maxLines: 4,
                hintText: notesModel.subTitle,
              ),
              const SizedBox(
                height: 15,
              ),
              ListViewColorEdit(
                newColors: notesModel.color,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void confirmTheEditing(NotesModel notesModel, BuildContext context) {
    notesModel.title = newTitle ?? notesModel.title;
    notesModel.subTitle = newSubTitle ?? notesModel.subTitle;
    BlocProvider.of<LoadeTheNoteCubit>(context).LoadeTheNote();
    Navigator.pop(context);
  }
}
