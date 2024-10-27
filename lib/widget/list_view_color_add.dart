import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/LoadeNoteCubit/loade_the_note_cubit.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit_cubit.dart';

import 'circle_color.dart';

class ListViewColorAdd extends StatefulWidget {
  const ListViewColorAdd({super.key});

  @override
  State<ListViewColorAdd> createState() => _ListViewColorAddState();
}

class _ListViewColorAddState extends State<ListViewColorAdd> {
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
              BlocProvider.of<AddNoteCubitCubit>(context).colors =
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
