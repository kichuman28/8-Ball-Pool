import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Center(
          child: Text('Ask Me Anything'),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){
          setState(() {
            ballNumber = Random().nextInt(4) + 1;
            print(ballNumber);
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
