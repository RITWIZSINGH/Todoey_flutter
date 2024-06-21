// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, unused_import

import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  late final bool isChecked;
  late final String taskTitle;
  final Function checkBoxCallBack;

  TasksTile({required this.taskTitle, required this.isChecked, required this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: (newValue) {
            checkBoxCallBack(newValue);
          },
        ));
  }
}
