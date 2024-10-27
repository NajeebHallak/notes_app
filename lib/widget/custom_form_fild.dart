import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
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
  final List<Color> colors = const [
    Color(0xFFCD93D7),
    Color(0xFF7EDEEC),
    Color(0xFFFECD7D),
    Color(0xFFA98853),
    Color(0xFFAA9D95),
    Color(0xFFE6ED98),
  ];

  Color? randomColor;

  @override
  void initState() {
    super.initState();
    randomColor = getRandomColor();
  }

  Color getRandomColor() {
    final random = Random();
    return colors[random.nextInt(colors.length)];
  }

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
          BlocBuilder<AddNoteCubitCubit, AddNoteCubitState>(
            builder: (context, state) {
              return ButtonAddNotes(
                isLoading: state is AddNoteCubitIsLoaded ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    var formDate = DateFormat.yMEd().format(DateTime.now());
                    formKey.currentState!.save();
                    notesModel = NotesModel(
                      title: title!,
                      subTitle: subTitle!,
                      color: randomColor!.value,
                      date: formDate,
                    );
                    BlocProvider.of<AddNoteCubitCubit>(context)
                        .addNote(notesModel!);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
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
///'${DateTime.now().month.toString()} ${DateTime.now().day.toString()},${DateTime.now().year.toString()}'