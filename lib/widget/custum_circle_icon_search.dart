import 'package:flutter/material.dart';

class CustumCircleIconSearch extends StatelessWidget {
  const CustumCircleIconSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color(0xFF3B3B3B),
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 30,
          ),
        ));
  }
}
