import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int SoundNumber) {
    final player = AudioCache();
    player.play('note$SoundNumber.wav');
  }

  Expanded buildkey({Color color,int soundnmber}){
    return Expanded(     //proper arrangement
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundnmber);
        },
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red,soundnmber: 1),
              buildkey(color: Colors.orange,soundnmber: 2),
              buildkey(color: Colors.yellow,soundnmber: 3),
              buildkey(color: Colors.green,soundnmber: 4),
              buildkey(color: Colors.teal,soundnmber: 5),
              buildkey(color: Colors.blue,soundnmber: 6),
              buildkey(color: Colors.purple,soundnmber: 7),


            ],
          ),
        ),
      ),
    );
  }
}
