import 'package:flutter/material.dart';
import 'dart:math';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var rand = random.nextInt(6) + 1;

  void buttonPress() {
    setState(() {
      rand = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'asset/images/dice-$rand.png',
            width: 200,
          ),
        ),
        const SizedBox(height: 15.9),
        TextButton(
          onPressed: buttonPress,
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 200, 241, 141),
            textStyle: const TextStyle(
              fontSize: 20,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
