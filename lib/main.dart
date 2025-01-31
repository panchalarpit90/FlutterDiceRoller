import 'package:flutter/material.dart';
import 'package:flutter_first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer( Color.fromARGB(241, 100, 6, 116),
           Color.fromARGB(223, 121, 36, 136)),
      ),
    ),
  );
}
