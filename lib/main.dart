import 'package:flutter/material.dart';

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
        appBarTheme: AppBarTheme(color: Colors.orangeAccent),
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset('assets/images/wot-logo.png',width: 70,),
          /**leading: IconButton(onPressed: () {debugPrint('lead good');}, icon: const Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: () {debugPrint('Act1 good');}, icon: const Icon(Icons.shopping_cart)),
            IconButton(onPressed: () {debugPrint('Act2 good');}, icon: const Icon(Icons.shopping_bag)),
          ],**/
        ),
        body: Column(
          children: [
            Image.asset('assets/images/60tp-2.png'),
            const Text('ขอบคุณที่ใช้บริการ',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
            const Text('เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ\n\n',style: TextStyle(fontSize: 16),),

            const Row(
              children: [
                Text('สรุปรายละเอียดการซืัอ',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 16,),
            const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.calendar_month),
                    Text(' วันที่ซืัอ',style: TextStyle(fontSize: 18),),
                  ],
                ),
                Text('9 กันยายน 2564',style: TextStyle(fontSize: 18),),
              ],),
            Row(
              children: [
                ElevatedButton(
                  onPressed: (){debugPrint('all good');},
                  child: Text('submit')),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){debugPrint('float good');},
          child: const Icon(Icons.shopping_cart),
        ),
      )
    );
  }
}


// class MyAppxtends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Pichanon App'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Count down',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
