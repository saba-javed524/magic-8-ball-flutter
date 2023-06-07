import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MagicBall());
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  var ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF4ca2f5),
        appBar: AppBar(
          title: const Text(
            'Ask Me Anything',
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: const Color(0xFF3158ab),
        ),
        body: Center(
          child: TextButton(
            child: Image.asset('images/ball$ballNumber.png'),
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(4) + 1;
              });
            },
          ),
        ),
      ),
    );
  }
}
