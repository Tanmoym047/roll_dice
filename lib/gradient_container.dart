import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';
//import 'package:roll_dice/styled_text.dart';

//it's custom class
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstcolor, this.secondcolor, {super.key});
  final Color firstcolor;
  final Color secondcolor;
  
  @override
  Widget build(context) {
    // this context must not be forgotten
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            firstcolor,
            secondcolor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const DiceRoller(),
    );
  }
}
