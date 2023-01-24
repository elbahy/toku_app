import 'package:flutter/material.dart';

class Sections extends StatelessWidget {
  const Sections(this.name, {required this.color, required this.onTap});

  final String name;
  final Color color;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 20),
        color: color,
        height: 65,
        child: Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
