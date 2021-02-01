import 'package:flutter/material.dart';
import 'package:todoey/tasks/tasks_list.dart';

import 'add_todo.dart';
import 'tasks_heading.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
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
                  TasksHeading(),
                  TasksList(),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: AddTodoButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
