import 'package:flutter/material.dart';

class CustumCircleIconSearch extends StatelessWidget {
  const CustumCircleIconSearch({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 18),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color(0xFF3B3B3B),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(icon),
        ));
  }
}
