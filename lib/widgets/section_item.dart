import 'package:flutter/material.dart';

class Sections extends StatelessWidget {
  const Sections(this.name, this.color);

  final String name;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      color: color,
      height: 65,
      child: Text(
        name,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      alignment: Alignment.centerLeft,
    );
  }
}
