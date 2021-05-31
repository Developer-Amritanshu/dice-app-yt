import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dice1 = Random().nextInt(6)+1;
  int dice2 = Random().nextInt(6)+1;
  roll() {
    setState(() {
      dice1 = Random().nextInt(6)+1;
      dice2 = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice App"),
        centerTitle: true,
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: GestureDetector(
                    onTap: () {
                      roll();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("images/dice${dice1}.png"),
                    ))),
            Expanded(
                child: GestureDetector(
                    onTap: () {
                      roll();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("images/dice${dice2}.png"),
                    ))),
          ],
        ),
      ),
    );
  }
}
