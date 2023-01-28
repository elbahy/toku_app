import 'package:flutter/material.dart';
import 'package:toku_app/app_data.dart';
import 'package:toku_app/widgets/list_item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListItem(item: colors[index], color: Colors.purple);
        },
        itemCount: colors.length,
      ),
    );
  }
}
