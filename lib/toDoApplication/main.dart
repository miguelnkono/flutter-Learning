import 'package:flutter/material.dart';
import 'package:flutter_learn/toDoApplication/pages/HomePage.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main(List<String> args) async {

  // Initialize Flutter bindings first
  WidgetsFlutterBinding.ensureInitialized();

  // initialize the hive
  await Hive.initFlutter();

  // open a box
  var box = await Hive.openBox("myBox");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /*
      * Good practise to define the primary theme of the application here and simply use derivatives of
      * it in the rest of the application.
      * */
      theme: ThemeData(primaryColor: Colors.yellow),
      home: HomePage(),
    );
  }
}
