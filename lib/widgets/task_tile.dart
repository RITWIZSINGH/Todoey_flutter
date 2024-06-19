// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  @override
  _TasksTileState createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool isChecked = true;

  void checkBoxCallBack(bool? value) {
    setState(() {
      isChecked = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a Task.',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isChecked,
        toggleCheckBoxState: checkBoxCallBack,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function(bool?) toggleCheckBoxState;

  TaskCheckBox({
    required this.checkBoxState,
    required this.toggleCheckBoxState,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckBoxState,
    );
  }
}
