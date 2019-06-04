import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int songNumber) {
    final player = AudioCache();
    player.play('note$songNumber.wav');
  }

  Widget buildTile({
    int songNumber,
    Color color,
  }) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(songNumber);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildTile(songNumber: 1,color: Colors.red),
              buildTile(songNumber: 2,color: Colors.orange),
              buildTile(songNumber: 3,color: Colors.yellow),
              buildTile(songNumber: 4,color: Colors.green),
              buildTile(songNumber: 5,color: Colors.teal),
              buildTile(songNumber: 6,color: Colors.blue),
              buildTile(songNumber: 7,color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
