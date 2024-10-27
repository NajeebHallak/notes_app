import 'package:flutter/material.dart';
import 'package:notes_app/widget/circle_color.dart';

import '../constans.dart';

class ListViewColorEdit extends StatefulWidget {
   ListViewColorEdit({super.key, required this.newColors});
   int newColors;
  @override
  State<ListViewColorEdit> createState() => _ListViewColoreditState();
}

class _ListViewColoreditState extends State<ListViewColorEdit> {
  late int theChoose;
  @override
  void initState() {
    theChoose = kPrimaryListColor.indexOf(Color(widget.newColors));
    super.initState();
  }
  // ignore: prefer_typing_uninitialized_variables

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
              widget.newColors = kPrimaryListColor[index].value;
            },
            child: CircleColor(
              colors: kPrimaryListColor[index],
              isColor: theChoose == index ? true : false,
            ),
          ),
        ));
  }
}
