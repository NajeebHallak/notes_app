import 'package:flutter/material.dart';

import '../constans.dart';

class CustomTetFild extends StatelessWidget {
  const CustomTetFild({
    super.key,
    required this.heightFild,
    required this.hintText,
  });
  final double heightFild;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      // maxLines: maxLines,
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.only(top: heightFild, bottom: heightFild, left: 15),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorderMithod(),
        focusedBorder: OutlineInputBorderMithod(kPrimaryColor),
        hintText: hintText,
        hintStyle: const TextStyle(color: kPrimaryColor, fontSize: 20),
      ),
    );
  }

  OutlineInputBorder OutlineInputBorderMithod([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
