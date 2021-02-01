import 'package:flutter/material.dart';
import 'package:todoey/tasks/Task.dart';
import 'package:todoey/tasks/tasks_list.dart';

import 'add_todo.dart';
import 'tasks_heading.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  final List<Task> tasks = [
    Task(text: 'moi', isChecked: false),
    Task(text: 'yolo', isChecked: true),
    Task(text: 'swag', isChecked: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlueAccent,
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TasksHeading(
                    remainingCount:
                        this.tasks.where((Task t) => !t.isChecked).length,
                    taskCount: this.tasks.length,
                  ),
                  TasksList(
                    tasks: this.tasks,
                    onChange: (task, value) {
                      return this.setState(() {
                        task.toggleChecked();
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: AddTodoFab(
        onAdd: (task) {
          setState(() {
            this.tasks.add(task);
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
