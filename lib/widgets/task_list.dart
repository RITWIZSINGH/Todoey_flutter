// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TasksTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkBoxCallBack: (bool checkboxState) {
                 taskData.updateTask(task);  
                },
                longPressCallBack: (){
                  taskData.deleteTask(task);
                },
                );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
