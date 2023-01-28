import 'package:flutter/material.dart';
import 'package:toku_app/app_data.dart';
import 'package:toku_app/widgets/list_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) =>
            ListItemNoImg(item: phrases[index], color: Colors.blue),
        itemCount: phrases.length,
      ),
    );
  }
}
