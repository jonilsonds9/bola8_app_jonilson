import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Pergunte-me Algo'),
          backgroundColor: Colors.blue,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var ballNumber = 1;
  List<String> listTextBallNumber = ['YES', 'NO', 'ASK AGAIN LATER', 'THE ANSWER IS YES', 'I HAVE NO IDEIA'];
  var textBallNumber = 'Yes';

  void randomBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      textBallNumber = listTextBallNumber[ballNumber - 1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  randomBall();
                },
                child: Image.asset(
                  'images/ball$ballNumber.png',
                )
            ),
          ),
          Text(
            '$textBallNumber',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
