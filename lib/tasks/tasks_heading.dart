import 'package:flutter/material.dart';
import 'package:todoey/tasks/task.dart';
import 'package:provider/provider.dart';

class TasksHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TodoeyLogo(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0, 0.0),
            child: Text(
              'Todoey',
              style: TextStyle(
                color: Colors.white,
                fontSize: 45.0,
                fontWeight: FontWeight.w700,
                letterSpacing: -2,
              ),
            ),
          ),
          TodoCounts(),
        ],
      ),
    );
  }
}

class TodoCounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tasks = Provider.of<TaskListModel>(context).tasks;

    return Text(
      '${tasks.where((Task t) => !t.isChecked).length} / ${tasks.length} Tasks remaining',
      style: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class TodoeyLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 25.0,
      child: Icon(
        Icons.list,
        color: Colors.lightBlueAccent,
        size: 28.0,
      ),
    );
  }
}
