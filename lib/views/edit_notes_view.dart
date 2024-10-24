import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_app_bar.dart';
import '../widget/custom_culomn_in_edit_screen.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});
  static String id = 'EditNotesView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        titl: ' Edit Notes',
        icon: Icons.check,
      ),
      body: const CustomCulomnInEditScreen(),
    );
  }
}
