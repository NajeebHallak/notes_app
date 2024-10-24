import 'package:flutter/material.dart';
import 'package:notes_app/widget/custum_circle_icon_search.dart';

import '../constans.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({super.key})
      : super(
          title: const Text(
            'Notes',
            style: kPeimayTextStyletitle,
          ),
          actions: const [
            CustumCircleIconSearch(),
          ],
        );
}
