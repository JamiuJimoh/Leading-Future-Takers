//! first talk about folder structure
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp()); //! entry point to every flutter app.
  //! runApp is a function that takes the given Widget and makes it the root of the widget tree.
}

//! MyApp inherits from StatelessWidget
//! StatelessWidget inherits from Widget
//! Almost everything that makes up the UI is a Widget in flutter.
//! Your class can inherit only 2 States
//! Stateful and Stateless widget
//! We'll talk about them in full later in this course
class MyApp extends StatelessWidget {
  //? because it is a stateless widget, it is immutable
  //? as a result, we use constant constructor
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //? context holds information about a widget in the widget tree
    //? information like the location of a Widget within the tree
    // return CupertinoApp(
    return MaterialApp(
      // in UI design, we have Material design And Cupertino. Material is what Android  has been using
      // your android UI is based on this design https://material.io/design
      // google owns android and Material design. All google apps use this design.
      // Cupertino design is what apple use https://developer.apple.com/design/
      // So it depends on how you want your app to look
      // You could build custom UIs by using any of them and customize them to your needs.
      title: 'Flutter Demo',
      // ? as the name implies, themes is where you theme your app...Colors and all.
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        colorScheme: ColorScheme.fromSwatch(
          accentColor: Colors.amber,
        ),
      ),
      //? remember I said the MyApp is the root of the tree
      //? and MaterialApp is the UI guidelines we are using
      //? home is used to add more widgets to the tree.
      home: const HomePage(title: 'Test App'),
    );
  }
}
