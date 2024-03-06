
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  get color => null;

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play( AssetSource( 'note$soundNumber.wav')  );
  }

  SizedBox buildKey({Color? color, int ? soundNumber}) {
    return SizedBox(
      child: GestureDetector(
        onTap: (){
          playSound(soundNumber!);
        },
        child: Container(
          color: color,
          width: 300,
          height: 104.6,

        ),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:color ,
appBar: AppBar(

  title: const Text("Xylophone"),

),
        body: SafeArea(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}