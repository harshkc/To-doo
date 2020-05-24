import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void updateTask(Task task) {
    task.checkItOff();
    notifyListeners();
  }

  int get itemsCount {
    return _tasks.length;
  }

  void addTask(String newTask) {
    final task = Task(name: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  get refreshedTasks {
    return _tasks;
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
