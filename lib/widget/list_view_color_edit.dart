import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/LoadeNoteCubit/loade_the_note_cubit.dart';
import 'package:notes_app/widget/circle_color.dart';

import '../cubit/add_note_cubit/add_note_cubit_cubit.dart';

class ListViewColorEdit extends StatefulWidget {
  const ListViewColorEdit({super.key});

  @override
  State<ListViewColorEdit> createState() => _ListViewColoreditState();
}

class _ListViewColoreditState extends State<ListViewColorEdit> {
  int theChoose = 0;

  List<Color> colors = const [
    Color(0xFFFFAEBC),
    Color(0xFFA0E7E5),
    Color(0xFFA0CD60),
    Color(0xFF145DA0),
    Color(0xFF1C646D),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 45 * 2,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              theChoose = index;
              setState(() {});
              BlocProvider.of<LoadeTheNoteCubit>(context).colors =
                  colors[index];
            },
            child: CircleColor(
              colors: colors[index],
              isColor: theChoose == index ? true : false,
            ),
          ),
        ));
  }
}
