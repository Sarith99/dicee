import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdiceNo = 1;
  int rightdiceNo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftdiceNo = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftdiceNo.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightdiceNo = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightdiceNo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
