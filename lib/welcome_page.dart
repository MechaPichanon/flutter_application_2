import 'package:flutter/material.dart';
import 'package:flutter_application_2/EV_cal.dart';
import 'package:flutter_application_2/about_us_page.dart';
import 'package:flutter_application_2/Enter_name.dart';

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
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/aboutUsPage');
                  },
                  icon: Icon(Icons.info),
                  iconSize: 40,
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Entername');
                  },
                  icon: Icon(Icons.abc),
                  iconSize: 40,
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Evcal');
                  },
                  icon: Icon(Icons.battery_6_bar),
                  iconSize: 40,
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/ListItem');
                  },
                  icon: Icon(Icons.shopping_bag),
                  iconSize: 40,
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/MyProduct');
                  },
                  icon: Icon(Icons.cached),
                  iconSize: 40,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
