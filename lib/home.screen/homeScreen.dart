import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int result = 1;
  void rollDice() {
    setState(() {
      result = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    String imageLink = 'assets/images/dice_$result.png';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: Text("Dice Roller"),
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/backgroundImage.jpg'),
                fit: BoxFit.cover)),
        child: Center(
          child: Image.asset(
            imageLink,
            height: 200,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: rollDice,
        tooltip: "Dice Roller",
        child: Icon(Icons.casino),
      ),
    );
  }
}
