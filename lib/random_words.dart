import 'package:flutter/material.dart';

import 'app_bar.dart';
import 'const.dart';
import 'narrow_layout.dart';
import 'wide_layout.dart';

class RandomWords extends StatelessWidget {
  const RandomWords({super.key});

  @override
  Widget build(BuildContext context) {
    //final state = Provider.of<AppState>(context);
    return LayoutBuilder(builder: (context, constraints) {
      final isWide = constraints.maxWidth > bigScreenWidth;
      return Scaffold(
          appBar: MyAppBar(forceEmpty: isWide),
          body: isWide ? const WideLayout() : const NarrowLayout());
    });
  }
}
