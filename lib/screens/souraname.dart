import 'package:flutter/material.dart';
import 'package:islami/screens/ayat_widget.dart';

class SouraNamedet extends StatelessWidget {
  String text;
  int index;

  SouraNamedet(this.text, this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, AyaatWidget.routename,
              arguments: Ayaatargs(suraName: text, index: index));
        },
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline1,
        ));
  }
}
