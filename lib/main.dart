import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './single_dice.dart';
import './double_dice.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Virtual Dice',
      home: Scaffold(backgroundColor: Colors.black, body: Home()),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Image.asset('assets/images/Dice.jpg'),
            ),
          ),
          Center(
            child: Text(
              'Virtual Dice',
              style: GoogleFonts.pacifico(
                textStyle: TextStyle(
                    color: Colors.blue, fontSize: 35, letterSpacing: .5),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SingleDice()),
                );
              },
              child: Text(
                'Single Dice',
                style: GoogleFonts.righteous(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DoubleDice()),
                );
              },
              child: Text(
                'Double Dice',
                style: GoogleFonts.righteous(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
