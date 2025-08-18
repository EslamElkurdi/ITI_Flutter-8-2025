import 'package:app_iti/bmi_screen.dart';
import 'package:app_iti/some_widgets.dart';
import 'package:flutter/material.dart';

void main() {
  
  // main
  runApp(MyApp());

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SomeWidgets(),
    );
  }
}

























// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyFirstScreen(),
//     );
//   }
// }

// class MyFirstScreen extends StatefulWidget {
//   MyFirstScreen({super.key});

//   @override
//   State<MyFirstScreen> createState() => _MyFirstScreenState();
// }

// class _MyFirstScreenState extends State<MyFirstScreen> {
//   int counter = 0;

//   void increaseCounter() {
//     counter++;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Counter App"), backgroundColor: Colors.amber),

//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           // crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // profile picture with online status
//             Stack(
//               alignment: Alignment.bottomRight,
//               children: [
//                 CircleAvatar(
//                   radius: 40,
//                   backgroundImage: NetworkImage(
//                     "https://upload.wikimedia.org/wikipedia/commons/0/05/Cat.png",
//                   ),
//                 ),
//                 DecoratedBox(
//                   decoration: BoxDecoration(
//                     color: Colors.green,
//                     shape: BoxShape.circle,
//                     border: Border.all(color: Colors.white, width: 3),
//                   ),
//                   child: SizedBox(
//                     width: 20,
//                     height: 20,
//                   ),
//                 ),
//               ],
//             ),

//             SizedBox(height: 10),

//             Icon(Icons.voice_chat, size: 30, color: Colors.redAccent),
//             Text("I am learning Flutter"),
//             Icon(Icons.star, size: 30, color: Colors.blueGrey),
//             SizedBox(height: 10),
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.redAccent,
//               child: Text("Red"),
//             ),
//             SizedBox(height: 10),
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.green,
//               child: Text("Green"),
//             ),
//             SizedBox(height: 10),
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.blueAccent,
//               child: Text("Blue"),
//             ),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.green,
//                   child: Text("Green"),
//                 ),
//                 SizedBox(width: 10),
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.blueAccent,
//                   child: Text("Blue"),
//                 ),
//               ],
//             ),
//             SizedBox(height: 10),
//             Stack(
//               children: [
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: Colors.blueAccent,
//                   child: Text("Blue"),
//                 ),

//                 Container(
//                   width: 50,
//                   height: 50,
//                   color: Colors.green,
//                   child: Text("Blue"),
//                 ),

//                 Container(
//                   width: 20,
//                   height: 20,
//                   color: Colors.black,
//                   child: Text("Blue"),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

/*
ElevatedButton(
        onPressed: () {
          setState(() {
            print("Clicked");
            increaseCounter();
            print(counter);
          });
        },
      
        child: Text("You have pressed the button $counter times"),
      ),

 */



// class MyFirstScreen extends StatelessWidget {
//   const MyFirstScreen({super.key});

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(title: Text("My First App"), backgroundColor: Colors.blue),

//       body: Center(
//         child: Text(
//         "Hello World!",
//         style: TextStyle(
//           fontSize: 24,
//           fontWeight: FontWeight.bold,
//           color: Colors.deepOrange,
//         ),
//       ),
//       )
//     );
//   }
// }















// stateless
// stateful
// state : data 




// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp( 
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
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
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
