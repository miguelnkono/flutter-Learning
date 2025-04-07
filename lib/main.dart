import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: Center(
              child: Text("Learning flutter"),
          ),
        ),
        body: Center(
          child: Text("Welcome to my flutter learning course!"),
        ),
      )
    );
  }
}
