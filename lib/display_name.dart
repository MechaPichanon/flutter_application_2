import 'package:flutter/material.dart';

class DisplayName extends StatefulWidget {
  final String? name;
  final int? age;

  const DisplayName({super.key, this.name, this.age});

  @override
  State<DisplayName> createState() => _DisplayNameState();
}

class _DisplayNameState extends State<DisplayName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Display Name"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [Text("Hello ${widget.name} , ${widget.age} year olds")],
        ),
      ),
    );
  }
}
