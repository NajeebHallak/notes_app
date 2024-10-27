import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constans.dart';
import 'package:notes_app/cubit/LoadeNoteCubit/loade_the_note_cubit.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/model/notes_model.dart';
import 'package:notes_app/simpole_bloc_observer.dart';
import 'package:notes_app/views/edit_notes_view.dart';
import 'package:notes_app/views/notes_app_view.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NotesModelAdapter());
  await Hive.openBox<NotesModel>(kPrimaryBox);
  Bloc.observer = SimpoleBlocObserver();

  runApp(const NptesApp());
}

class NptesApp extends StatelessWidget {
  const NptesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoadeTheNoteCubit(),
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
