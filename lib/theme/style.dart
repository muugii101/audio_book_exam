import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    primarySwatch: Palette.mainColor,
  );
}

class Palette {
  static const MaterialColor mainColor = MaterialColor(
    0xffF9A409,
    <int, Color>{
      50: Color(0xffF9A409), //10%
      100: Color(0xffF9A409), //20%
      200: Color(0xffF9A409), //30%
      300: Color(0xffF9A409), //40%
      400: Color(0xffF9A409), //50%
      500: Color(0xffF9A409), //60%
      600: Color(0xffF9A409), //70%
      700: Color(0xffF9A409), //80%
      800: Color(0xffF9A409), //90%
      900: Color(0xffF9A409), //100%
    },
  );
}
