import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
           Color.fromARGB(198, 78, 46, 12),
           Color.fromARGB(197, 12, 67, 57),
        ),
      ),
    ),
  );
}
