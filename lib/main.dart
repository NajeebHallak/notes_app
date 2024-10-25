import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constans.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/model/notes_model.dart';
import 'package:notes_app/simpole_bloc_observer.dart';
import 'package:notes_app/views/edit_notes_view.dart';
import 'package:notes_app/views/notes_app_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kPrimaryBox);
  Bloc.observer = SimpoleBlocObserver();
  Hive.registerAdapter(NotesModelAdapter());
  runApp(const NptesApp.NotesApp());
}

class NptesApp extends StatelessWidget {
  const NptesApp.NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddNoteCubitCubit>(
          create: (context) => AddNoteCubitCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          NotesAppView.id: (context) => const NotesAppView(),
          EditNotesView.id: (context) => const EditNotesView(),
        },
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        initialRoute: NotesAppView.id,
      ),
    );
  }
}
