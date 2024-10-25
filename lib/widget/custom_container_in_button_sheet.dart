import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/widget/custom_form_fild.dart';

import '../cubit/add_note_cubit/add_note_cubit_cubit.dart';

class CustomContainerInButtonSheet extends StatefulWidget {
  const CustomContainerInButtonSheet({super.key});

  @override
  State<CustomContainerInButtonSheet> createState() => _CustomContainerInButtonSheetState();
}

class _CustomContainerInButtonSheetState extends State<CustomContainerInButtonSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
        listener: (context, state) {
          if (state is AddNoteCubitIsfaliure) {
            print('faliur is ${state.error} ');
          } else {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddNoteCubitIsLoaded ? true : false,
            child: const SingleChildScrollView(
              child: CustomFormFild(),
            ),
          );
        },
      ),
    );
  }
}
