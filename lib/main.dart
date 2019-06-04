import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                child: Text('Play Note 1'),
                onPressed: () {
                  final player = AudioCache();
                  player.play('note1.wav');
                },
              ),
               FlatButton(
                child: Text('Play Note 2'),
                onPressed: () {
                  final player = AudioCache();
                  player.play('note2.wav');
                },
              ),
               FlatButton(
                child: Text('Play Note 3'),
                onPressed: () {
                  final player = AudioCache();
                  player.play('note3.wav');
                },
              ),
               FlatButton(
                child: Text('Play Note 4'),
                onPressed: () {
                  final player = AudioCache();
                  player.play('note4.wav');
                },
              ),
               FlatButton(
                child: Text('Play Note 5'),
                onPressed: () {
                  final player = AudioCache();
                  player.play('note5.wav');
                },
              ),
               FlatButton(
                child: Text('Play Note 6'),
                onPressed: () {
                  final player = AudioCache();
                  player.play('note6.wav');
                },
              ),
               FlatButton(
                child: Text('Play Note 7'),
                onPressed: () {
                  final player = AudioCache();
                  player.play('note7.wav');
                },
              ),
            ],
          )),
        ),
      ),
    );
  }
}
