import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  String greetingMessage = "";
  /*
  * To access what the user typed in, we set a text editing controller
  * */
  TextEditingController textEditingController = TextEditingController();

  // method to greet the user
  void greetUser() {
    setState(() {
      String userName = textEditingController.text;
      greetingMessage = "Hello $userName";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        /*
        * The TextField widget is used as a place for the user to type in some
        * text.
        * */
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            // center the alignment of the column elements
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // greeting message
              Text(greetingMessage),

              TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // give a hint text( like placeholder in html )
                  hintText: "Type something in",
                ),
              ),

              // button
              ElevatedButton(
                  onPressed: greetUser,
                  child: Text('Tap')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
