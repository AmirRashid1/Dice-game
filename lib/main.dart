import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Flutter Diece Game",
            style: TextStyle(
              fontFamily: 'Palatino',
              fontSize: 25,
            ),
          ),
        ),
        body: Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int count = 6;
  int count1 = 2;
  int st = 1;

  void UserFun() {
    setState(() {
      count1 = Random().nextInt(6) + 1;
      count = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$count1.png'),
              onPressed: () {
                UserFun();
              },
              style: TextButton.styleFrom(
                  // primary: Colors.yellow,
                  ),
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$count.png'),
              onPressed: () {
                UserFun();
              },
              style: TextButton.styleFrom(
                primary: Colors.green,
                shadowColor: Colors.black87,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              child: Text(
                "Hi Flutter... $st",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  st++;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
