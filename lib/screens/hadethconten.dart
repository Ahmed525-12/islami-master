import 'package:flutter/material.dart';
import 'package:islami/screens/hadeth.dart';

class Hadtehconten extends StatelessWidget {
  static const routename = "hadethcontent";
  List<String> versess = [];
  Hadtehconten({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
    versess = hadeth.content;
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
              hadeth.title,
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
          ),
          body: versess.length == 0
              ? const Center(child: CircularProgressIndicator.adaptive())
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        "${hadeth.content}",
                        style: Theme.of(context).textTheme.subtitle1,
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      )),
                    );
                  },
                  itemCount: versess.length,
                ),
        ),
      ],
    );
  }
}
