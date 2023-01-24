import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {required this.japaneseWord,
      required this.englishWord,
      required this.imgUrl});

  final String japaneseWord;
  final String englishWord;
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      child: ListTile(
        title: Text(japaneseWord,
            style: const TextStyle(color: Colors.white, fontSize: 24)),
        leading: Image.asset('assets/images/$imgUrl'),
        subtitle: Text(englishWord,
            style: const TextStyle(color: Colors.white, fontSize: 24)),
        trailing: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.play_arrow),
          onPressed: () {
            AudioPlayer player = new AudioPlayer();
            player.play(DeviceFileSource('sounds/colors/black.wav'));
          },
        ),
      ),
    );
  }
}
