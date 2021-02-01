import 'package:flutter/material.dart';
import 'package:todoey/tasks/tasks_list.dart';

import 'add_todo.dart';
import 'tasks_heading.dart';

class TasksScreen extends StatelessWidget {
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
      floatingActionButton: AddTodoFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
