import 'package:flutter/material.dart';
import 'package:islami/provider/themeset.dart';
import 'package:islami/seteeings/themebotoomsheet.dart';
import 'package:provider/provider.dart';

class SeteeingsTab extends StatefulWidget {
  static const String routename = "seteeings";
  SeteeingsTab({Key? key}) : super(key: key);

  @override
  State<SeteeingsTab> createState() => _SeteeingsTabState();
}

class _SeteeingsTabState extends State<SeteeingsTab> {
  @override
  Widget build(BuildContext context) {
            var provider = Provider.of<Themeprovider>(context);

    return Stack(children: [
      Image.asset(
        provider.isDark() ? "assets/img/darkheader.png" : "assets/img/bg.png",
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
          appBar: AppBar(
            title: Text(
              "Settings",
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Theme"),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Showbottomsheet();
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColor),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Text( provider.isDark()?"dark":  "light"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Language"),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Showbottomsheet();
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColor),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Text("En"),
                  ),
                ),
              ],
            ),
          ))
    ]);
  }

  void Showbottomsheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext) {
          return Bottomsheet();
        });
  }
}
