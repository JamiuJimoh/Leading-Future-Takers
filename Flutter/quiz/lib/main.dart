import 'package:flutter/material.dart';

import 'constants.dart';
import 'home_page.dart';

// https://dribbble.com/shots/8210470-Quiz-App-Mobile-Application/attachments/586455?mode=media

//TODO:1 Create the ui
//TODO:2 add the functionality
//TODO:3 add backend

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: kBackgroundColor,
      ),
      home: const HomePage(),
    );
  }
}
