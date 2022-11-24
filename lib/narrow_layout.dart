import 'package:flutter/material.dart';

import 'list_tile.dart';

class NarrowLayout extends StatelessWidget {
  const NarrowLayout({super.key});

  @override
  Widget build(BuildContext context) => ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return const Divider();
          return WordListTile(index: i >> 1);
        },
      );
}
