import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

import '../../constans.dart';
import '../../model/notes_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  Color colors = const Color(0xFFFFAEBC);
  addNote(NotesModel notesModel) async {
    emit(AddNoteCubitIsLoaded());
    try {
      var myBox = Hive.box<NotesModel>(kPrimaryBox);
      await myBox.add(notesModel);
      emit(AddNoteCubitIsSuccess());
    } catch (e) {
      emit(AddNoteCubitIsfaliure(e.toString()));
    }
  }
}
//