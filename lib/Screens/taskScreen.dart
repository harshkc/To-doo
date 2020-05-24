import 'package:flutter/material.dart';
import 'package:todo_app/provider/taskData.dart';
import '../widgets/taskList.dart';
import 'addTaskScreen.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskData = Provider.of<TaskData>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 30.0,
        ),
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFFEA1556),
        hoverElevation: 5.0,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: AddTaskScreen(),
              ),
            ),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),
                CircleAvatar(
                  child: Icon(
                    Icons.content_paste,
                    size: 40.0,
                    color: Color(0xFFEA1556),
                  ),
                  backgroundColor: Colors.white,
                  radius: 40.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "To-Doo",
                  style: TextStyle(
                    fontSize: 50.0,
                    fontFamily: "pacifico",
                    color: Colors.white,
                    //fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "${taskData.itemsCount} task",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: "pacifico",
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Color(0xFFEA1556),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: taskData.itemsCount == 0
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Center(
                        child: Text(
                          "add new tasks and begin your awesome journey with us",
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    )
                  : TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
