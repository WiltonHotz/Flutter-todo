import 'package:flutter/material.dart';
import 'models/task.dart';
import 'dart:collection';

class StateData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Learn Provider Pattern for state management'),
    Task(name: 'Publish to GitHub '),
    Task(name: 'Complete Udemy\'s: The Complete 2020 Flutter Development Bootcamp with Dart'),
    Task(name: 'Start making my own Flutter apps from scratch'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get tasksCount {
    return _tasks.length;
  }

  void addTask(String taskName) {
    final task = Task(name: taskName);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
      task.toggleDone();
      notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

}