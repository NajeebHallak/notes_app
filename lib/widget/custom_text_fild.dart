import 'package:flutter/material.dart';

import '../constans.dart';

class CustomTetFormFild extends StatelessWidget {
  const CustomTetFormFild({
    super.key,
    required this.maxLines,
    required this.hintText,
    this.onChanged,
    this.onSaved,
    this.validator,
  });
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final int maxLines;
  final String hintText;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onChanged,
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
