import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.newText, {super.key});
  final String newText;

  @override
  Widget build(context) {
    return Text(
      newText,
      style: TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
