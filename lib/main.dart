import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}

class Home extends StatelessWidget {

  AudioCache cache = new AudioCache();
  AudioPlayer player;

  void _play(String argument) async{
    _stopFile();
    player = await cache.play(argument);
  }

  void _stopFile() {
    player?.stop();
  }

  /// TODO: Make private
  void kaffeeButtonPressed() {
    _play('andreas_kaffee.mp3');
  }

  void haltStopButtonPressed() {
    _play('andreas_halt_stop.mp3');
  }

  void quatschButtonPressed() {
    _play('quatsch.mp3');
  }

  void vielleichtWahrButtonPressed() {
    _play('x_faktor_vielleicht_wahr.mp3');
  }

  void freiErfundenButtonPressed() {
    _play('x_faktor_geschichte_frei_erfunden.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Soundboard'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RaisedButton(
                    onPressed: () {
                      kaffeeButtonPressed();
                    },
                    child: Text('Andreas Kaffee')),
                RaisedButton(
                    onPressed: () {
                      haltStopButtonPressed();
                    },
                    child: Text('Halt STOP')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RaisedButton(
                    onPressed: () {
                      quatschButtonPressed();
                    },
                    child: Text('Quatsch')),
                RaisedButton(
                    onPressed: () {
                      vielleichtWahrButtonPressed();
                    },
                    child: Text('Vielleicht wahr')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {
                    freiErfundenButtonPressed();
                  },
                  child: Text('Frei erfunden'),
                ),
              ],
            )
          ],
        ));
  }
}
