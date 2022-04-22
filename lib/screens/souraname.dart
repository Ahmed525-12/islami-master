import 'package:flutter/material.dart';
import 'package:islami/screens/ayat_widget.dart';

class SouraNamedet extends StatelessWidget {
  String sourname;
  int index;
  String aaya;

  SouraNamedet(this.sourname, this.index, this.aaya,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AyaatWidget.routename,
                        arguments: Ayaatargs(suraName: sourname, index: index));
                  },
                  child: Text(
                    aaya,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1,
                  )),
            ),
            Expanded(
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AyaatWidget.routename,
                        arguments: Ayaatargs(suraName: sourname, index: index));
                  },
                  child: Text(
                    sourname,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1,
                  )),
            )
          ],
        )
      ],
    );
  }
}
