import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/model/notes_model.dart';

import '../../constans.dart';

part 'loade_the_note_state.dart';

class LoadeTheNoteCubit extends Cubit<LoadeTheNoteState> {
  LoadeTheNoteCubit() : super(LoadeTheNoteInitial());
  Color? colors;
  List<NotesModel>? notesModel;
  LoadeTheNote() {
    var myBox = Hive.box<NotesModel>(kPrimaryBox);
    notesModel = myBox.values.toList();
    
    emit(LoadeTheNoteSuccess());
  }
}
