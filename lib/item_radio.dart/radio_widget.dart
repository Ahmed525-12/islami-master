import 'package:flutter/material.dart';
import 'package:islami/models/radio_data.dart';

class RadioWidget extends StatefulWidget {
  Radios item;
  Function play;
  Function pause;
  RadioWidget(this.item, this.play, this.pause, {Key? key}) : super(key: key);

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  @override
  build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(children: [
        Center(
          child: Text(
            "${widget.item.name}",
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                widget.play(widget.item.radioUrl);
              },
              icon: Icon(
                Icons.play_arrow_rounded,
                size: 45,
                color: Theme.of(context).appBarTheme.iconTheme!.color,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            IconButton(
                onPressed: () {
                  widget.pause();
                },
                icon: Icon(
                  Icons.pause,
                  size: 45,
                  color: Theme.of(context).appBarTheme.iconTheme!.color,
                ))
          ],
        )
      ]),
    );
  }
}
