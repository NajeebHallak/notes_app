import 'package:flutter/material.dart';

class CustumCircleIconSearch extends StatelessWidget {
  const CustumCircleIconSearch({super.key, required this.icon, this.onPressed});
  final void Function()? onPressed;
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
        child: Center(
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              size: 30,
            ),
          ),
        ));
  }
}
