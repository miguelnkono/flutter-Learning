import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // variables
  int _counter = 0;

  // methods
  void _incrementCounter() {
    /*
    * The method setState(() {}) rebuilds the hold application with the
    * new changes applied to the application.
    * */
    setState(() {
      _counter++;
    });
  }

  // uis
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You push this many times the button:"),
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 40),
            ),
            // button to interact with the user
            ElevatedButton(
                onPressed: _incrementCounter,
                child: Icon(Icons.add_circle)
            ),
          ],
        ),
      ),
    );
  }
}
