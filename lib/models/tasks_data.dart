import 'package:flutter/foundation.dart';
import 'package:to_do_app/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{

  final List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskLength{
    return _tasks.length;
  }

  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

}