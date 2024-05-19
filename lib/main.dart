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
                    leftDiceNum = 5;
                  });
                  print(leftDiceNum);
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                child: Image.asset('images/dice1.png'),
                onPressed: () {
                  leftDiceNum = 2;
                  print(leftDiceNum);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
