import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/LoadeNoteCubit/loade_the_note_cubit.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit_cubit.dart';

import '../constans.dart';
import 'circle_color.dart';

class ListViewColorAdd extends StatefulWidget {
  const ListViewColorAdd({super.key});

  @override
  State<ListViewColorAdd> createState() => _ListViewColorAddState();
}

class _ListViewColorAddState extends State<ListViewColorAdd> {
  int theChoose = 0;

  // List<Color> colors = kPrimaryListColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 45 * 2,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kPrimaryListColor.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              theChoose = index;
              setState(() {});
              BlocProvider.of<AddNoteCubitCubit>(context).colors =
                  kPrimaryListColor[index];
            },
            child: CircleColor(
              colors: kPrimaryListColor[index],
              isColor: theChoose == index ? true : false,
            ),
          ),
        ));
  }
}
