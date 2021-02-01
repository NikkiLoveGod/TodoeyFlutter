import 'dart:collection';

import 'package:flutter/material.dart';

class Task {
  Task({this.text, this.isChecked});
  String text;
  bool isChecked;

  bool toggleChecked() {
    return this.isChecked = !this.isChecked;
  }
}

class TaskListModel extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(text: 'moi', isChecked: false),
    Task(text: 'yolo', isChecked: true),
    Task(text: 'swag', isChecked: true),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(this._tasks);

  void add(Task task) {
    this._tasks.add(task);
    notifyListeners();
  }

  void toggle(int index) {
    this._tasks[index].toggleChecked();
    notifyListeners();
  }

  Task get(int index) {
    return this._tasks[index];
  }
}
