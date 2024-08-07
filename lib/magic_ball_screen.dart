import 'dart:math';

import 'package:flutter/material.dart';

class MagicBallScreen extends StatefulWidget {
  const MagicBallScreen({super.key});

  @override
  State<MagicBallScreen> createState() => _MagicBallScreenState();
}

class _MagicBallScreenState extends State<MagicBallScreen> {
  int answer = 1;

  void changeAnswer() {
    return setState(() {
      answer = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          changeAnswer();
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Image(
            image: AssetImage("images/ball$answer.png"),
          ),
        ),
      ),
    );
  }
}
