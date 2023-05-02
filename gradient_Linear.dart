import 'package:dice/diceRoller.dart';
import 'package:flutter/material.dart';

import 'package:dice/styled_txt.dart';


var startAllignment = Alignment.topLeft;

var endAllignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {

final List<Color>colors;
 
  const GradientContainer({required this.colors,super.key});
  @override
  Widget build(context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration:  BoxDecoration(
          gradient: LinearGradient(colors: 
            colors,
           begin: startAllignment,
           end: endAllignment,
        ),),
        child: DiceRoller(),);
  }
}
