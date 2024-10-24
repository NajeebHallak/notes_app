import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_text_fild.dart';

class CustomCulomnInEditScreen extends StatelessWidget {
  const CustomCulomnInEditScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          CustomTetFild(
            heightFild: 20,
            hintText: 'Title',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTetFild(
            heightFild: 65,
            hintText: 'Content',
          ),
        ],
      ),
    );
  }
}
