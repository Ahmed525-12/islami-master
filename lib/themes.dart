import 'package:flutter/material.dart';

class Themesd {
  static Color colorBlack = const Color.fromRGBO(36, 36, 36, 1.0);
  static Color colorGold = const Color.fromRGBO(183, 147, 95, 1.0);
    static Color darkparyamry = const Color.fromRGBO(20, 26, 46, 1.0);


  static var lighttheme = ThemeData(
    
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: colorBlack,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0),
    textTheme: const TextTheme(
        headline1: TextStyle(
      color: Color.fromRGBO(36, 36, 36, 1.0),
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    subtitle1: TextStyle(
       color: Color.fromRGBO(36, 36, 36, 1.0),
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    headline2:  TextStyle(
       color:   Color.fromRGBO(183, 147, 95, 1.0),
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    headline3: TextStyle(
      color: Color.fromARGB(255, 247, 126, 45) ,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    
    ),

       elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(
      backgroundColor:  MaterialStateProperty.all(Color.fromRGBO(183, 147, 95, 1.0)),
      
    )),
    primaryColor: const Color.fromRGBO(183, 147, 95, 1.0),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(unselectedItemColor: Colors.white,selectedItemColor:colorBlack )
  );

   static var darktheme=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        iconTheme:  IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0),
    textTheme:  const TextTheme(
        headline1: TextStyle(
      color: Colors.white ,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),

headline3: TextStyle(
      color: Color.fromARGB(255, 247, 126, 45) ,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),

    subtitle1:  TextStyle(
       color:  Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    headline2:  TextStyle(
       color:   Color.fromRGBO(183, 147, 95, 1.0),
      fontSize: 20,
      fontWeight: FontWeight.bold,
    )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(
      backgroundColor:  MaterialStateProperty.all(colorGold)
    )),
    primaryColor:  darkparyamry,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(unselectedItemColor: Colors.white,selectedItemColor:Color.fromARGB(255, 255, 170, 11) )
  );
}
