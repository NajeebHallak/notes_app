import 'package:flutter/material.dart';
import 'package:notes_app/widget/custum_circle_icon_search.dart';

import '../constans.dart';

class CustomAppBar extends AppBar {
  final IconData icon;

  final String titl;
  CustomAppBar({super.key, required this.icon, required this.titl})
      : super(
          automaticallyImplyLeading: false,
          title: Text(
            titl,
            style: kPeimayTextStyletitle,
          ),
          actions: [
            CustumCircleIconSearch(
              icon: icon,
            ),
          ],
        );
}
