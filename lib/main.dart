import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
//import 'io.flutter.plugin.common.PluginRegistry.Registrar';



void main() {
  return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text("Piano App"),
            backgroundColor: Colors.black,
          ),
          body: xylophone(),
        ),
      )
  );
}

class xylophone extends StatelessWidget {

  void playsound(int number)
  {
    final player = AudioCache();
    player.play('assets_note$number.wav');
  }

   Expanded buildsound({required Color color, required int Soundnumber})
  {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(Soundnumber);
        },
        child: Text(""),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildsound(color:Colors.red, Soundnumber: 1),
              buildsound(color:Colors.green, Soundnumber: 2),
              buildsound(color:Colors.yellow, Soundnumber: 3),
              buildsound(color:Colors.blue, Soundnumber: 4),
              buildsound(color:Colors.purple, Soundnumber:5),
              buildsound(color:Colors.blue, Soundnumber: 6),
              buildsound(color:Colors.cyanAccent, Soundnumber: 7),
            ],
          ),

      ),
    );
  }
}
