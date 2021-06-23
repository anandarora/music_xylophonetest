import 'package:audioplayers/src/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());  // using arrow index and not{}


class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(Color colorKey, int soundIndex) {
    return Expanded(
      child: TextButton(
        child: Text(''),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(colorKey)
        ),
        onPressed: (){
          playSound(soundIndex);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black45,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red,1),
              buildKey(Colors.green,2),
              buildKey(Colors.blue,3),
              buildKey(Colors.yellow,4),
              buildKey(Colors.white,5),
              buildKey(Colors.purple,6),
              buildKey(Colors.cyan,7),
              buildKey(Colors.indigo,1),
            ] ,
            ),
          ),
        )
     );
  }
}
