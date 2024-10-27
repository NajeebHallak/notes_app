import 'package:flutter/material.dart';

import '../constans.dart';
import 'custom_container_in_button_sheet.dart';

class CustomFlotingActionButton extends StatelessWidget {
  const CustomFlotingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kPrimaryColor,
      onPressed: () {
        showModalBottomSheet(
          isDismissible: true,
          isScrollControlled: true,
          context: context,
          builder: (context) => const CustomContainerInButtonSheet(),
        );
      },
      child: const Icon(
        Icons.add,
        color: Colors.black,
      ),
    );
  }
}
