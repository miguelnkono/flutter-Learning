import 'package:flutter/material.dart';
import 'package:flutter_learn/toDoApplication/util/myButton.dart';

class DialogBox extends StatelessWidget {
  final controller;
  final VoidCallback onSaved;
  final VoidCallback onCancel;

  const DialogBox({super.key, required this.controller, required this.onSaved, required this.onCancel,});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      // the content of the alert box
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get the user input
            TextField(
              // access whatever the user has typed in
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter the new task!",
              ),
            ),

            // put the save & the cancel buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                MyButton(text: "Save", onPressed: onSaved),

                // put some space between the two buttons
                const SizedBox(width: 10,),

                // cancel button
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            ),
          ],

        ),
      ),
    );
  }
}
