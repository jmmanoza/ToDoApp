import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase {

  List toDoList = [];

  // reference
  final _myBox = Hive.box('mybox');

  // run this method if this is the first time opening this app
  void createInitialData() {
    toDoList = [
      ["Meditate", false],
      ["Prepare for morning job", false]
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}