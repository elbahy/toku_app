import 'package:flutter/material.dart';
import 'package:toku_app/screens/colors_screen.dart';
import 'package:toku_app/screens/family_members_page.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrases_page.dart';

import '../widgets/section_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toku'),
        backgroundColor: Color(0xff46322B),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Sections(
            'Numbers',
            color: Colors.orange,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const NumbersPage()));
            },
          ),
          Sections(
            'Family Members',
            color: Colors.green,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FamilyMemberPage()));
            },
          ),
          Sections(
            'Colors',
            color: Colors.purple,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const ColorsPage();
              }));
            },
          ),
          Sections(
            'Phrases',
            color: Colors.blue,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const PhrasesPage();
              }));
            },
          )
        ],
      ),
    );
  }
}
