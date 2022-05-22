import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){
  runApp(
      XylophoneApp()
  );
}

class XylophoneApp extends StatelessWidget {

  void play(int num){   // created function to play sounds
    final player = AudioCache();    // code to play music
    player.play('sound$num.wav');   //call the sounds
  }

  Expanded buildKey({Color? color, int? sound}){  //created another function to minimize duplicate expanded widgets
    return Expanded(
      child: FlatButton(
        child: Text(''),
        color: color,
        onPressed: (){
          play(sound!);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              buildKey(color:Colors.red,sound:1), //calling buildKey functions
              buildKey(color:Colors.yellow,sound:2),
              buildKey(color:Colors.blue,sound:3),
              buildKey(color:Colors.orange,sound:4),
              buildKey(color:Colors.green,sound:5),
              buildKey(color:Colors.purpleAccent,sound:6),

            ],
          ),
        ),
      ),
    );
  }
}