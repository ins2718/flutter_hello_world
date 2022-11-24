import 'package:flutter/material.dart';

const biggerFont = TextStyle(fontSize: 18);

class BigText extends StatelessWidget {
  const BigText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: biggerFont,
    );
  }
}
