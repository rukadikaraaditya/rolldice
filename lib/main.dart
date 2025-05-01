import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 91, 10, 150),
        appBar: AppBar(
          title: Center(
            child: const Text(
              'Roll a Dice',
              style: TextStyle(),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 244, 7, 212),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<DicePage> {
  int LeftDiceNum = 1;
  int RightDiceNum = 1;

  void changeDiceFce() {
    setState(() {
      LeftDiceNum = Random().nextInt(6) + 1;
      RightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceFce();
              },
              child: Image.asset(
                'images/dice-$LeftDiceNum.png',
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceFce();
              },
              child: Image.asset(
                'images/dice-$RightDiceNum.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
