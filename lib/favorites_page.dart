import 'package:flutter/material.dart';
import 'package:testapp/favorites.dart';

import 'const.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) =>
      LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > bigScreenWidth) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            final nav = Navigator.of(context);
            if (nav.canPop()) {
              nav.pop();
            }
          });
        }
        return Scaffold(
            appBar: AppBar(
              title: const Text('Saved Suggestions'),
            ),
            body: const Favorites());
      });
}
