import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/display_name.dart';

class EnterName extends StatefulWidget {
  const EnterName({super.key});

  @override
  State<EnterName> createState() => _EnterState();
}

class _EnterState extends State<EnterName> {
  String _input = " ";
  final _textController1 = TextEditingController();
  final _ages = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("YOUR NAME"),
        ),
        body: Center(
          child: Column(
            children: [
              Column(
                children: [
                  const Text("Hello"),
                  TextField(
                    controller: _textController1,
                    decoration: const InputDecoration(
                      hintText: "Enter Your Name",
                      labelText: "Name",
                    ),
                  ),
                  TextField(
                    controller: _ages,
                    decoration: const InputDecoration(
                        hintText: "Enter Age", labelText: "Age"),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        String _input = _textController1.text;
                        int ages = int.parse(_ages.text);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DisplayName(
                                      name: _input,
                                      age: ages,
                                    )));
                      },
                      child: Icon(Icons.add_box))
                ],
              ),
            ],
          ),
        ));
  }
}
