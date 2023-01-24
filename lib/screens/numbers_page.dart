import 'package:flutter/material.dart';
import 'package:toku_app/numbers_data.dart';

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
            return numberData[index];
          },
          itemCount: numberData.length,
        ));
  }
}
