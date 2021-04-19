import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';

class SingleDice extends StatefulWidget {
  @override
  _SingleDiceState createState() => _SingleDiceState();
}

class _SingleDiceState extends State<SingleDice> {
  int _dicenumber = 6;
  void roller() {
    setState(() {
      _dicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                final player = AudioCache();
                player.play('Dice.wav');
                roller();
              },
              child: Image.asset('assets/images/dice$_dicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
