import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: Text(
          "home Page",
        ),
      ),
    );
  }
}
