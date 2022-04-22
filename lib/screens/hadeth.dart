import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/screens/hdeathname.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HadethPage extends StatefulWidget {

  HadethPage({Key? key}) : super(key: key);

  @override
  State<HadethPage> createState() => _HadethPageState();
}

class _HadethPageState extends State<HadethPage> {
  List<Hadeth> showhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (showhadeth.isEmpty) {
      readHeadeth();
    }
    return Column(
      children: [
        Center(child: Image.asset("assets/img/hadetheader.png")),
    
        Text(
          AppLocalizations.of(context)!.ahdeth,
          style: Theme.of(context).textTheme.headline3,
        ),
        Divider(
          thickness: 3,
          color: Theme.of(context).primaryColor,
        ),
        Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return HadethName(showhadeth[index]);
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 1,
                    color: Theme.of(context).primaryColor,
                  );
                },
                itemCount: showhadeth.length))
      ],
    );
  }

  void readHeadeth() async {
    String fileContent =
        await rootBundle.loadString("assets/quran/ahadeth .txt");
    List<String> ahdeth = fileContent.trim().split("#\r\n");
    for (var i = 0; i < ahdeth.length; i++) {
      String hadeth = ahdeth[i];
      List<String> lines = hadeth.split("\n");
      String title = lines[0];
      lines.removeAt(0);
      Hadeth hadeths = Hadeth(title, lines);
      showhadeth.add(hadeths);
    }
    setState(() {
      
    });
  }
}

class Hadeth {
  String title;
  List<String> content;
  Hadeth(this.title, this.content);
}
