import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Vogais extends StatefulWidget {
  @override
  _VogaisState createState() => _VogaisState();
}

class _VogaisState extends State<Vogais> {
  AudioCache _audioCache = AudioCache(prefix: "sounds/");

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
