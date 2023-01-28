import 'package:flutter/material.dart';
import 'package:toku_app/app_data.dart';
import 'package:toku_app/widgets/list_item.dart';

class FamilyMemberPage extends StatelessWidget {
  const FamilyMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListItem(
            item: familyData[index],
            color: Colors.green,
          );
        },
        itemCount: familyData.length,
      ),
    );
  }
}
