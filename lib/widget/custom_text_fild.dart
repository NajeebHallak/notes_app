import 'package:flutter/material.dart';

import '../constans.dart';

class CustomTetFormFild extends StatelessWidget {
  const CustomTetFormFild({
    super.key,
    required this.maxLines,
    required this.hintText,
    required this.onSaved,
  });
  final void Function(String?)? onSaved;
  final int maxLines;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Fild is required ';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        // contentPadding:
        //     EdgeInsets.only(top: heightFild, bottom: heightFild, left: 15),
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
