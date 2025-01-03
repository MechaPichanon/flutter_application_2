import 'package:flutter/material.dart';
import 'package:flutter_application_2/EV_cal.dart';
import 'package:flutter_application_2/about_us_page.dart';
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
      home: const EvCal(),
      //home: const WelcomePage(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           useMaterial3: true,
//           appBarTheme: AppBarTheme(color: Colors.orangeAccent),
//         ),
//         home: Scaffold(
//           appBar: AppBar(
//             centerTitle: true,
//             title: Image.asset(
//               'assets/images/wot-logo.png',
//               width: 70,
//             ),
//             /**leading: IconButton(onPressed: () {debugPrint('lead good');}, icon: const Icon(Icons.menu)),
//           actions: [
//             IconButton(onPressed: () {debugPrint('Act1 good');}, icon: const Icon(Icons.shopping_cart)),
//             IconButton(onPressed: () {debugPrint('Act2 good');}, icon: const Icon(Icons.shopping_bag)),
//           ],**/
//           ),
//           body:Padding(padding: const EdgeInsets.all(10.0), 
//           child: Column(
//             children: [
//               Image.asset('assets/images/60tp-2.png'),
//               const Text(
//                 'ขอบคุณที่ใช้บริการ',
//                 style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//               ),
//               const Text(
//                 'เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ\n\n',
//                 style: TextStyle(fontSize: 16),
//               ),
//               const Row(
//                 children: [
//                   Text(
//                     'สรุปรายละเอียดการซืัอ',
//                     style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 16,
//               ),
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       Icon(Icons.calendar_month),
//                       Text(
//                         ' วันที่ซืัอ',
//                         style: TextStyle(fontSize: 18),
//                       ),
//                     ],
//                   ),
//                   Text(
//                     '9 กันยายน 2564',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                 ],
//               ),
//               const TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: "NAME",
//                   hintText: "Enter Name",
//                 ),
//               )
//             ],
//           ),
//           )
//         ));
//   }
// }