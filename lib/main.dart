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

  void _comeOnButtonPressed() {
    _play('come_on.mp3');
  }

  void _doubtItButtonPressed() {
    _play('doubt_it.mp3');
  }

  void _einredenButtonPressed() {
    _play('einreden.mp3');
  }

  void _etikettButtonPressed() {
    _play('etikett.mp3');
  }

  void _neinButtonPressed() {
    _play('nein.mp3');
  }

  void _obstButtonPressed() {
    _play('obst.mp3');
  }

  void _probeweiseButtonPressed() {
    _play('probeweise.mp3');
  }

  void _wohooButtonPressed() {
    _play('wohoo.mp3');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Soundboard'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    kaffeeButtonPressed();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Column(
                    children: [
                      Icon(
                        Icons.play_arrow_outlined,
                        size: 24,
                      ),
                      Text('Kaffee'),
                    ],
                  ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),

                MaterialButton(
                  onPressed: () {
                    _comeOnButtonPressed();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Column(
                    children: [
                      Icon(
                        Icons.play_arrow_outlined,
                        size: 24,
                      ),
                      Text('come on'),
                    ],
                  ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),

                MaterialButton(
                  onPressed: () {
                    haltStopButtonPressed();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Column(
                    children: [
                      Icon(
                        Icons.play_arrow_outlined,
                        size: 24,
                      ),
                      Text('STOP'),
                    ],
                  ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    quatschButtonPressed();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Column(
                    children: [
                      Icon(
                        Icons.play_arrow_outlined,
                        size: 24,
                      ),
                      Text('Quatsch'),
                    ],
                  ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),

                MaterialButton(
                  onPressed: () {
                    _doubtItButtonPressed();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Column(
                    children: [
                      Icon(
                        Icons.play_arrow_outlined,
                        size: 24,
                      ),
                      Text('doubt it'),
                    ],
                  ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),

                MaterialButton(
                  onPressed: () {
                    vielleichtWahrButtonPressed();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Column(
                    children: [
                      Icon(
                        Icons.play_arrow_outlined,
                        size: 24,
                      ),
                      Text('Vielleicht'),
                    ],
                  ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    freiErfundenButtonPressed();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Column(
                    children: [
                      Icon(
                        Icons.play_arrow_outlined,
                        size: 24,
                      ),
                      Text('Erfunden'),
                    ],
                  ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),

                MaterialButton(
                  onPressed: () {
                    _einredenButtonPressed();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Column(
                    children: [
                      Icon(
                        Icons.play_arrow_outlined,
                        size: 24,
                      ),
                      Text('einreden'),
                    ],
                  ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),

                MaterialButton(
                  onPressed: () {
                    _etikettButtonPressed();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Column(
                    children: [
                      Icon(
                        Icons.play_arrow_outlined,
                        size: 24,
                      ),
                      Text('Etikett'),
                    ],
                  ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    _neinButtonPressed();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Column(
                    children: [
                      Icon(
                        Icons.play_arrow_outlined,
                        size: 24,
                      ),
                      Text('Nein'),
                    ],
                  ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),

                MaterialButton(
                  onPressed: () {
                    _obstButtonPressed();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Column(
                    children: [
                      Icon(
                        Icons.play_arrow_outlined,
                        size: 24,
                      ),
                      Text('Obst'),
                    ],
                  ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),

                MaterialButton(
                  onPressed: () {
                    _probeweiseButtonPressed();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Column(
                    children: [
                      Icon(
                        Icons.play_arrow_outlined,
                        size: 24,
                      ),
                      Text('Probeweise'),
                    ],
                  ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    _wohooButtonPressed();
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Column(
                    children: [
                      Icon(
                        Icons.play_arrow_outlined,
                        size: 24,
                      ),
                      Text('Wohoo'),
                    ],
                  ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),
              ],
            )
          ],
        ));
  }
}
