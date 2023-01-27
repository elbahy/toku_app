import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/number.dart';

class ListItem extends StatelessWidget {
  final Number number;
  ListItem(this.number);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      child: ListTile(
        title: Text(number.japWord,
            style: const TextStyle(color: Colors.white, fontSize: 24)),
        leading: Image.asset('assets/images/${number.imgUrl}'),
        subtitle: Text(number.engWord,
            style: const TextStyle(color: Colors.white, fontSize: 24)),
        trailing: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.play_arrow),
          onPressed: () {
            AudioPlayer player = AudioPlayer();
            player.play(DeviceFileSource('asset/sounds/${number.soundUrl}'));
          },
        ),
      ),
    );
  }
}
