import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'favorites_page.dart';
import 'list_icon.dart';
import 'state.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({super.key, this.forceEmpty = false});

  final bool forceEmpty;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(builder: (context, state, _) {
      final icon = forceEmpty || state.isFavEmpty()
          ? null
          : ListIcon(onPressed: () => pushSaved(context));
      return AppBar(
          title: const Text('Startup Name Generator'),
          leading: icon,
          actions: icon != null ? [icon] : []);
    });
  }

  void pushSaved(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const FavoritesPage()),
    );
  }
}
