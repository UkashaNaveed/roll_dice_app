import 'package:flutter/material.dart';

import 'dart:math';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
final randomrizer = Random();

class GradientContainer extends StatefulWidget {
  const GradientContainer({required this.colors, super.key});

  const GradientContainer.yellowRed({super.key})
    : colors = const [
        Color.fromARGB(255, 190, 240, 8),
        Color.fromARGB(255, 226, 35, 2),
      ];

  final List<Color>? colors;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomrizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: widget.colors ?? [],
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/dice-$currentDiceRoll.png',
                width: 200,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: rollDice,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.purple,
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: Text('Roll Dice'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
