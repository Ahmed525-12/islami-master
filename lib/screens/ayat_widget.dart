import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AyaatWidget extends StatefulWidget {
  static const String routename = "Ayaat";

  AyaatWidget({Key? key}) : super(key: key);

  @override
  State<AyaatWidget> createState() => _AyaatWidgetState();
}

class _AyaatWidgetState extends State<AyaatWidget> {
  List<String> versess = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Ayaatargs;
    if (versess.length == 0) loadFile("${args.index + 1}");
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
              args.suraName,
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
          ),
          body: versess.length == 0
              ? Center(child: CircularProgressIndicator.adaptive())
              : ListView.separated(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        "${versess[index]} (${index + 1})",
                        style: Theme.of(context).textTheme.headline1,
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      )),
                    );
                  },
                  itemCount: versess.length,
                  separatorBuilder: (context, index) {
                    return Container(
                      height: 1,
                      color: Theme.of(context).primaryColor,
                    );
                  },
                ),
        ),
      ],
    );
  }

  void loadFile(String fileName) async {
    String fileContent =
        await rootBundle.loadString("assets/quran/$fileName.txt");

    List<String> versess = fileContent.split("\n");
    this.versess = versess;
    print(versess);
    setState(() {});
  }
}

class Ayaatargs {
  String suraName;
  int index;

  Ayaatargs({required this.suraName, required this.index});
}
