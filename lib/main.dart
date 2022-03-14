import 'package:flutter/material.dart';
import 'package:islami/homescree.dart';
import 'package:islami/screens/ayat_widget.dart';
import 'package:islami/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Themesd.lighttheme,
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        AyaatWidget.routename: (context) => AyaatWidget(),
      },
      initialRoute: HomePage.routeName,
    );
  }
}
