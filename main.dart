import 'gradient_Linear.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(
    const Flutr(),
  );
}
class Flutr extends StatelessWidget {
  const Flutr({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body:  GradientContainer(colors: [Color.fromARGB(255, 1, 16, 42)
          ,Color.fromARGB(255, 77, 190, 247)],),
        ),
      ),
    );
  }
}

