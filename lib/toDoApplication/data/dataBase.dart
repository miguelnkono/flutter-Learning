// create a new class: toDoDataBase
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

  // list of todos
  List toDoList = [];

  // reference the box
  final _myBox = Hive.box("myBox");

  /*
  * Run this method if it's the first time ever opening the application.
  * */
  void createInitialData() {
    toDoList = [
      ["Finish flutter learning course!", false],
      ["Finish Java learning book!", false],
    ];
  }

  /*
  * Load data from the database
  * */
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  /*
  * Update the data base
  * */
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }

}