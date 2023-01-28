import 'package:flutter/material.dart';
import 'package:toku_app/app_data.dart';
import 'package:toku_app/widgets/list_item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Numbers'),
          backgroundColor: Color(0xff46322B),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListItem(
              item: numberData[index],
              color: Colors.orange,
            );
          },
          itemCount: numberData.length,
        ));
  }
}
