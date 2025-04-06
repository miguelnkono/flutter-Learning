import 'package:flutter/material.dart';

import './firstPage.dart';
import 'homePage.dart';
import 'settingsPage.dart';


void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: firstPage(),
      routes: {
        '/firstPage': (context) => firstPage(),
        '/homePage': (context) => homePage(),
        '/settingsPage': (context) => settingsPage(),
      },
    );
  }
}
