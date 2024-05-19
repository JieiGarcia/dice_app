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

class DiceP extends StatelessWidget {
  int leftDiceNum = 5;

  @override
  Widget build(BuildContext context) {
    leftDiceNum = 2;
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                child: Image.asset('images/dice$leftDiceNum.png'),
                onPressed: () {
                  print('jay');
                  leftDiceNum = 2;
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                child: Image.asset('images/dice2.png'),
                onPressed: () {
                  print('hello');
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
