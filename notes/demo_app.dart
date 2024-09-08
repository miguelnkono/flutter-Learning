import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Course',
//       theme: ThemeData(),
//       debugShowCheckedModeBanner: false,

//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter Course'),
//         ), // AppBar

//         body: const Center(
//           child: Text('Hello World', style: TextStyle(fontSize: 30),),
//         ), // Center
//       ), // Scaffold
//     ); // MaterialApp
//   }
// }

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.teal,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ), // TheneData
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Starter App'),
      ), // AppBar
      body: const Center(
        child: Text(
          'Hello, World',
          style: TextStyle(fontSize: 30), // TextStyle
        ), // Text
      ), // Center
    ), // Scaffold
  ) // MaterialApp
      );
}
