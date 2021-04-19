import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';

class DoubleDice extends StatefulWidget {
  @override
  _DoubleDiceState createState() => _DoubleDiceState();
}

class _DoubleDiceState extends State<DoubleDice> {
  int _ldicenumber = 6;
  int _rdicenumber = 6;
  void roller() {
    setState(() {
      _ldicenumber = Random().nextInt(6) + 1;
      _rdicenumber = Random().nextInt(6) + 1;
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
              child: Image.asset('assets/images/dice$_ldicenumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                final player = AudioCache();
                player.play('Dice.wav');
                roller();
              },
              child: Image.asset('assets/images/dice$_rdicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
