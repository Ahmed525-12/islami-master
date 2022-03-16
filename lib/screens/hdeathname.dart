import 'package:flutter/material.dart';
import 'package:islami/screens/ayat_widget.dart';
import 'package:islami/screens/hadeth.dart';
import 'package:islami/screens/hadethconten.dart';

class HadethName extends StatelessWidget {

  Hadeth hadeth;

  HadethName(this.hadeth, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context,Hadtehconten.routename ,arguments: hadeth);
        },
        child: Text(
          hadeth.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline1,
        ));
  }
}
