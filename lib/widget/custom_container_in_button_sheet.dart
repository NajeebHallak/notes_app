import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/widget/custom_form_fild.dart';

import '../cubit/add_note_cubit/add_note_cubit_cubit.dart';

class CustomContainerInButtonSheet extends StatelessWidget {
  const CustomContainerInButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
      listener: (context, state) {
        if (state is AddNoteCubitIsfaliure) {
          print('faliur is ${state.error} ');
        } else {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNoteCubitIsLoaded ? true : false,
          child: Padding(
            padding: EdgeInsets.only(
              left: 12,
              right: 12,
              top: 12,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: const SingleChildScrollView(
              child: CustomFormFild(),
            ),
          ),
        );
      },
    );
  }
}
