import 'package:flutter/material.dart';
import '../provider/taskData.dart';
import 'tileList.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.itemsCount,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TileList(
              title: task.name,
              checkBoxCall: (checkBoxState) {
                taskData.updateTask(task);
              },
              isDone: task.isDone,
              onLongPressed: () {
                taskData.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}
