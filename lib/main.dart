import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DiceP(),
      ),
    ),
  );
}

class DiceP extends StatefulWidget {
  const DiceP({super.key});

  @override
  State<DiceP> createState() => _DicePState();
}

class _DicePState extends State<DiceP> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                child: Image.asset('images/dice$leftDiceNum.png'),
                onPressed: () {
                  setState(() {
                    changeDiceFace();
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                child: Image.asset('images/dice$rightDiceNum.png'),
                onPressed: () {
                  changeDiceFace();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
