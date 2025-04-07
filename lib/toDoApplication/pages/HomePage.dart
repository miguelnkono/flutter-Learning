
import 'package:flutter/material.dart';
import 'package:flutter_learn/toDoApplication/data/dataBase.dart';
import 'package:flutter_learn/toDoApplication/util/dialogBox.dart';
import 'package:flutter_learn/toDoApplication/util/todo_tile.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // reference the hive box
  final _myBox = Hive.box("myBox");

  // todos list
  ToDoDataBase db = ToDoDataBase();

  // initial state of the application
  @override
  void initState() {

    // check if it is the first time ever opening the application
    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      // so if there already are data inside the database
      db.loadData();
    }

    super.initState();
  }

  // text controller
  final _controller = TextEditingController();

  // method to track if the checkbox has been tap
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateDataBase();
  }

  // method to save a new task
  void saveNewTask() {
    setState(() {
      String newTaskTitle = _controller.text;
      List newTask = [newTaskTitle, false];
      db.toDoList.add(newTask);
      _controller.clear();  // clear the input field.
    });
    Navigator.of(context).pop();
    db.updateDataBase();
  }

  // method to create a new task
  void createNewTask() {
    /*
    * Show dialog for the user to enter the name of the new task
    * */
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSaved: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  // method to delete a new task
  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(child: Text("To Do")),
        elevation: 0,
      ),

      /*
      * The ListView.builder() widget makes it very dynamic when handling list of
      * data.
      * */
      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: db.toDoList[index][0],
            taskCompleted: db.toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
          );
        },
      ),

      /*
      * Creating floatingActionButton...
      * */
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
    );
  }
}
