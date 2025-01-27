import 'package:flutter/material.dart';
import 'package:flutter_application_2/about_us_page.dart';

class ListItem extends StatefulWidget {
  const ListItem({super.key});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  final List<String> Tanks = <String>[
    "SFAC105",
    "XM57",
    "ELC EVEN 90",
    "STRV S1",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Premium Tank"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(
                  Tanks[index],
                  style: TextStyle(fontSize: 20),
                ),
              ),
          separatorBuilder: (context, int index) => const Divider(),
          itemCount: Tanks.length),
    );
  }
}
