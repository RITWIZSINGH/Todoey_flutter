// ignore_for_file: unused_import

import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';

class Data extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  void addTask(String newTask) {
    tasks.add(Task(name: newTask));
    notifyListeners();
  }

  int get taskCount{
    return tasks.length;
  }
}
