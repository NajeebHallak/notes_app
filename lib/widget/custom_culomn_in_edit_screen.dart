import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_text_fild.dart';

class CustomCulomnInEditScreen extends StatelessWidget {
  const CustomCulomnInEditScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          CustomTetFormFild(
            onSaved: (value) {},
            maxLines: 1,
            hintText: 'Title',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTetFormFild(
            onSaved: (value) {},
            maxLines: 5,
            hintText: 'Content',
          ),
        ],
      ),
    );
  }
}
