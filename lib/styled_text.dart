import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: Colors.red, fontSize: 28));
  }
}
