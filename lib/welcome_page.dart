import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String _output = " ";
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("HOME"),
      ),
      body: Center(
        child: Column(
        children: [
          Column(
            children: [
              const Text("Hello"),
              TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  hintText: "Enter Your Name",
                  labelText: "Name",
                ),
              ),
              Text("$_output"),
              ElevatedButton(
                onPressed: (){String input = _textController.text;setState(() {
                  _output = "Hello and Welcome";debugPrint("press");
                });}, child: const Icon(Icons.devices)),
            ],
          ),
        ],
      ),
      )
    );
  }
}