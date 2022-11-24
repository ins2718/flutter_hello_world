import 'package:flutter/material.dart';

class ListIcon extends StatelessWidget {
  const ListIcon({super.key, required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.list),
      onPressed: onPressed,
      tooltip: 'Saved Suggestions',
    );
  }
}
