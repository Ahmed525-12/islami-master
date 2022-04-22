import 'dart:math';

import 'package:flutter/material.dart';

class TsbehaPage extends StatefulWidget {
  TsbehaPage({Key? key}) : super(key: key);

  @override
  State<TsbehaPage> createState() => _TsbehaPageState();
}

class _TsbehaPageState extends State<TsbehaPage> {
  double angle = 0;

  List<String> tspehat = ["سبحان الله ", "الحمدلله ", "الله أكبر"];
  int count = 0;
  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset("assets/img/headsebha.png"),
                Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.07),
                    child: Transform.rotate(
                        angle: angle,
                        child: InkWell(
                          onTap: () {
                             angle = angle + 20;
              count++;
              if (count == 37) {
                count = 0;
              }
              if (sum > 2) {
                sum = 0;
              }
              setState(() {});
                          },
                          child: Image.asset("assets/img/sephaturn.png")))),
              ],
            ),
          ),
        ),
        Text(
          "عدد التسبيحات ",
          style: Theme.of(context).textTheme.headline1,
        ),
        Container(
          color: Theme.of(context).primaryColor,
          height: 80,
          width: 80,
          child: Center(
              child: Text(
            "$count",
            style: Theme.of(context).textTheme.headline1,
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child:
            
             Text(
              count == 36 ? "${tspehat[sum++]}" : "${tspehat[sum]}",
              style: Theme.of(context).textTheme.headline1,
            ),
          
        )
      ],
    );
  }
}
