import 'package:flutter/material.dart';

class Palette {
  static const Color scaffold = Color(0xFFF0F2F5);

  static const Color facebookBlue = Color(0xFF1777F2);
  static  Color colorIcon=Colors.grey.withOpacity(.9);
  static const  caption=TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black
  );
  static const  title=TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black
  );
  static LinearGradient createRoomGradient = LinearGradient(
    colors: [Color(0xFF496AE1), Color(0xFFCE48B1)],
  );

  static const Color online = Color(0xFF4BCB1F);

  static LinearGradient storyGradient = LinearGradient(
    colors: [Colors.transparent, Colors.black26],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}