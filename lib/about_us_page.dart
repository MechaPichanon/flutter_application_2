import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About us"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text("Hi we are EV charging Test group"),
          ],
        ),
      ),
    );
  }
}
