import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'big_text.dart';
import 'state.dart';

class WordListTile extends StatelessWidget {
  const WordListTile({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) =>
      Consumer<AppState>(builder: (context, state, child) {
        final alreadySaved = state.isFavorite(index);
        return ListTile(
            title: BigText(text: state.text(index)),
            trailing: alreadySaved ? favIcon() : defaultIcon(),
            onTap: () =>
                alreadySaved ? state.removeFav(index) : state.addFav(index));
      });

  defaultIcon() => const Icon(Icons.favorite_border, semanticLabel: 'Save');
  favIcon() => const Icon(Icons.favorite,
      semanticLabel: 'Remove from saved', color: Colors.red);
}
