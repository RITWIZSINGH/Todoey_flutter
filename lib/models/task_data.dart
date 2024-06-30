// ignore_for_file: unused_import, prefer_final_fields

import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'dart:collection';

class Data extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTask) {
    _tasks.add(Task(name: newTask));
    notifyListeners();
  }

  int get taskCount{
    return _tasks.length;
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}
