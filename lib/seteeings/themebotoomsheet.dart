import 'package:flutter/material.dart';
import 'package:islami/provider/themeset.dart';
import 'package:provider/provider.dart';

class Bottomsheet extends StatefulWidget {
  const Bottomsheet({Key? key}) : super(key: key);

  @override
  State<Bottomsheet> createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Themeprovider>(context);
    return Container(
      color: provider.isDark()?Theme.of(context).primaryColor:Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          
          children: [
            InkWell(
                onTap: () {
                  provider.changetheme(ThemeMode.light);
                },
                child: getbotoonsheet("Light", !provider.isDark())),
            Divider(
              thickness: 3,
              color: Theme.of(context).primaryColor,
            ),
            InkWell(
                onTap: () {
                                 provider.changetheme(ThemeMode.dark);

                },
                child: getbotoonsheet("dark", provider.isDark())),
          ],
        ),
      ),
    );
  }

  Widget getbotoonsheet(String title, bool selected) {
    if (selected) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline2,
            ),
            Icon(
              Icons.check,
              color: Color.fromRGBO(183, 147, 95, 1.0),
            )
          ],
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Icon(
            Icons.check,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
