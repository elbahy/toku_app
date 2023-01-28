import 'package:flutter/material.dart';

class Item {
  final String engWord;
  final String japWord;
  final String? imgUrl;
  final String soundUrl;

  const Item({
    required this.engWord,
    required this.japWord,
    @required this.imgUrl,
    required this.soundUrl,
  });
}
