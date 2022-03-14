import 'package:flutter/material.dart';
import 'package:islami/screens/hadeth.dart';
import 'package:islami/screens/quran_tab.dart';
import 'package:islami/screens/radio.dart';
import 'package:islami/screens/tsbeha.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "home";

  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/img/bg.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "islami",
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: tabs[currentIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            backgroundColor: Theme.of(context).primaryColor,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/img/radio.png")),
                label: "Radio",
                backgroundColor: Theme.of(context).primaryColor,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/img/sebha.png")),
                label: "Sebha",
                backgroundColor: Theme.of(context).primaryColor,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage("assets/img/quran-quran-svgrepo-com.png")),
                label: "Hadieth",
                backgroundColor: Theme.of(context).primaryColor,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/img/quran.png")),
                label: "Quran",
                backgroundColor: Theme.of(context).primaryColor,
              ),
            ],
          ),
        ),
      ],
    );
  }

  var tabs = [
    RadioPage(),
    TsbehaPage(),
    HadethPage(),
    QuranPage(),
  ];
}
