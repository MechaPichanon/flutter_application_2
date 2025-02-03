import 'package:flutter/material.dart';
import 'package:flutter_application_2/EV_cal.dart';
import 'package:flutter_application_2/Enter_name.dart';
import 'package:flutter_application_2/about_us_page.dart';
import 'package:flutter_application_2/detail_page.dart';
import 'package:flutter_application_2/http_basic.dart';
import 'package:flutter_application_2/list_item.dart';
import 'package:flutter_application_2/my_futurebuilder_page.dart';
import 'package:flutter_application_2/my_listpage.dart';
import 'package:flutter_application_2/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: AppBarTheme(color: Colors.white),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/aboutUsPage': (context) => AboutUsPage(),
        '/Entername': (context) => EnterName(),
        '/Evcal': (context) => EvCal(),
        '/ListItem': (context) => ListItem(),
        '/MyProduct': (context) => MyListPage(),
      },
      //home: const EvCal(),
      //home: const WelcomePage(),
    );
  }
}
