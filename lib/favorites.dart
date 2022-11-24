import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'big_text.dart';
import 'state.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(builder: (context, state, _) {
      final tiles =
          state.favTexts().map((e) => ListTile(title: BigText(text: e)));
      final divided =
          ListTile.divideTiles(context: context, tiles: tiles).toList();
      return ListView(children: divided);
    });
  }
}
