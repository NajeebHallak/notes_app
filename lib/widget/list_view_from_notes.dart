import 'package:flutter/material.dart';

import 'custom_container_notes.dart';

class ListViewFromNotes extends StatelessWidget {
  const ListViewFromNotes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => const CustomContainerNotes(),
            ),
          ),
        ],
      ),
    );
  }
}
