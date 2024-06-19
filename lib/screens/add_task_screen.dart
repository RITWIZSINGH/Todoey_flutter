// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.all(20),
        height: 400,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'ADD TASK',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                fillColor: Colors.lightBlueAccent,
                constraints: BoxConstraints(
                  maxWidth: 300,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 20),
              child: TextButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: 40,
                  width: 250,
                  child: Center(
                      child: Text(
                    'ADD',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
