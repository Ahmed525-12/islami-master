import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami/apis/api_manager.dart';
import 'package:islami/models/radio_data.dart';

import '../item_radio.dart/radio_widget.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({Key? key}) : super(key: key);

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
    final player = AudioPlayer();
play(String url)async{
     await player.play(url);
}
pause()async{ await player.pause();}
  @override
  build(BuildContext context) {
    return FutureBuilder<RadioData>(
      future: ApiManager.getRadioData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator.adaptive());
        } else if (snapshot.hasError) {
          return Center(
            child: Column(
              children: [
                const Text("something get wrong"),
                ElevatedButton(onPressed: () {}, child: const Text("try agian"))
              ],
            ),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Column(
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("try agian"))
              ],
            ),
          );
        }

        var resultList = snapshot.data?.radios??[];
        return Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                "assets/img/radioimg.png",
                width: MediaQuery.of(context).size.width * 0.999,
                height: MediaQuery.of(context).size.height * 0.6,
              ),
            ),
            Expanded(
                flex: 1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return RadioWidget(resultList[index],play,pause); 
                  },
                  itemCount:resultList.length ,
                ))
          ],
        );
      },
    );
  }
}
