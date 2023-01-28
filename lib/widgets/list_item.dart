import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/item.dart';

class ListItem extends StatelessWidget {
  final Item item;
  final Color color;
  ListItem({required this.item, required this.color});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: ListTile(
        title: Text(item.japWord,
            style: const TextStyle(color: Colors.white, fontSize: 24)),
        leading: Image.asset('assets/images/${item.imgUrl}'),
        subtitle: Text(item.engWord,
            style: const TextStyle(color: Colors.white, fontSize: 24)),
        trailing: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.play_arrow),
          onPressed: () {
            AudioPlayer player = AudioPlayer();

            player.play(AssetSource('sounds/${item.soundUrl}'));
          },
        ),
      ),
    );
  }
}

class ListItemNoImg extends StatelessWidget {
  const ListItemNoImg({super.key, required this.item, required this.color});
  final Item item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: ListTile(
        title: Text(item.japWord,
            style: const TextStyle(color: Colors.white, fontSize: 24)),
        subtitle: Text(item.engWord,
            style: const TextStyle(color: Colors.white, fontSize: 24)),
        trailing: IconButton(
          color: Colors.white,
          icon: Icon(Icons.play_arrow),
          onPressed: () {
            AudioPlayer player = AudioPlayer();

            player.play(AssetSource('sounds/${item.soundUrl}'));
          },
        ),
      ),
    );
  }
}
