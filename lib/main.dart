import 'package:flutter/material.dart';
import 'package:toku_app/widgets/section_item.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Toku'),
          backgroundColor: Color(0xff46322B),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Sections('Numbers', Colors.orange),
            Sections('Family Members', Colors.green),
            Sections('Colors', Colors.purple),
            Sections('Phrases', Colors.blue)
          ],
        ),
      ),
    );
  }
}
