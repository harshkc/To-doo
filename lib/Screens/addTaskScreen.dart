import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/provider/taskData.dart';

class AddTaskScreen extends StatelessWidget {
  String newTask = "";

  @override
  Widget build(BuildContext context) {
    final taskData = Provider.of<TaskData>(context);
    return Container(
      color: Color(0xff030303),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Color(0xFFEA1556),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25.0),
            topLeft: Radius.circular(25.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                "Add Task",
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: "pacifico",
                ),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              autofocus: true,
              cursorColor: Color(0xFF0A0E21),
              textAlign: TextAlign.center,
              onChanged: (val) {
                newTask = val;
              },
            ),
            SizedBox(height: 15.0),
            Center(
              child: FlatButton(
                child: Text(
                  "Add Task",
                  style: TextStyle(
                    color: Color(0xFFEA1556),
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  if (newTask.length > 0 && newTask.trim() != "") {
                    taskData.addTask(newTask);
                    Navigator.pop(context);
                  } else {}
                },
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
