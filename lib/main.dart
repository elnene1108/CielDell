import 'package:flutter/material.dart';
import 'package:my_app/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
          [Color.fromARGB(255, 59, 1, 109), Color.fromARGB(255, 206, 1, 1)]),
    ),
  ));
}
