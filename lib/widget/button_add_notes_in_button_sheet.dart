
import 'package:flutter/material.dart';

import '../constans.dart';

class AddNotesInButtonSheet extends StatelessWidget {
  const AddNotesInButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: kPrimaryColor),
      child: const Center(
        child: Text(
          'Add',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}