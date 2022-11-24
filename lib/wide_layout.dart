import 'package:flutter/material.dart';

import 'favorites.dart';
import 'list_tile.dart';

class WideLayout extends StatelessWidget {
  const WideLayout({super.key});

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            flex: 1,
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemBuilder: (context, i) {
                if (i.isOdd) return const Divider();
                return WordListTile(index: i >> 1);
              },
            ),
          ),
          const Expanded(flex: 1, child: Favorites())
        ],
      );
}
