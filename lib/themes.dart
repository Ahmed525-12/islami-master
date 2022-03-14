import 'package:flutter/material.dart';

class Themesd {
  static Color colorBlack = Color.fromRGBO(36, 36, 36, 1.0);
  static Color colorGold = Color.fromRGBO(183, 147, 95, 1.0);
  static var lighttheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: colorBlack,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0),
    textTheme: TextTheme(
        headline1: TextStyle(
      color: Color.fromRGBO(36, 36, 36, 1.0),
      fontSize: 30,
      fontWeight: FontWeight.bold,
    )),
    primaryColor: Color.fromRGBO(183, 147, 95, 1.0),
  );
}
