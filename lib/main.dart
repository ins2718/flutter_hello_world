import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'random_words.dart';
import 'state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) => AppState(),
        child: const MaterialApp(
          title: 'Startup Name Generator',
          home: RandomWords(),
        ));
  }
}
