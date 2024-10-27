import 'package:flutter/material.dart';

class CircleColor extends StatelessWidget {
  const CircleColor({
    super.key,
    required this.colors,
    required this.isColor,
  });
  final Color colors;
  final bool isColor;
  @override
  Widget build(BuildContext context) {
    return isColor
        ? Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: colors,
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              radius: 35,
              backgroundColor: colors,
            ),
          );
  }
}
