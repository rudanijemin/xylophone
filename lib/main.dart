import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              FlatButton(
                color: Colors.red,
                onPressed:(){
                  final player=AudioCache();
                  player.play('note1.wav');
                  },

              ),
              FlatButton(
                color: Colors.orange,
                onPressed:(){
                  final player=AudioCache();
                  player.play('note2.wav');
                },

              ),
              FlatButton(
                color: Colors.yellow,
                onPressed:(){
                  final player=AudioCache();
                  player.play('note3.wav');
                },

              ),
              FlatButton(
                color: Colors.green,
                onPressed:(){
                  final player=AudioCache();
                  player.play('note4.wav');
                },

              ),
              FlatButton(
                color: Colors.teal,
                onPressed:(){
                  final player=AudioCache();
                  player.play('note5.wav');
                },

              ),
              FlatButton(
                color: Colors.blue,
                onPressed:(){
                  final player=AudioCache();
                  player.play('note6.wav');
                },
              ),
              FlatButton(
                color: Colors.purple,
                onPressed:(){
                  final player=AudioCache();
                  player.play('note7.wav');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
