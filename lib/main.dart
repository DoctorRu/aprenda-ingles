import 'package:flutter/material.dart';
import 'telas/home.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color(0xff795548),
      accentColor: Colors.orange,
      scaffoldBackgroundColor: Color(0xfff5e9b9)
    ),
  ));
}