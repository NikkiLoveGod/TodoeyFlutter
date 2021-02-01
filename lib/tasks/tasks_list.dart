import 'package:flutter/material.dart';
import 'package:todoey/tasks/rounded_well.dart';

import 'Task.dart';

class TasksList extends StatelessWidget {
  TasksList({@required this.tasks, @required this.onChange});
  final List<Task> tasks;
  final void Function(Task task, bool value) onChange;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RoundedWell(
        child: ListView.builder(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 80.0),
          itemCount: this.tasks.length,
          itemBuilder: (context, index) {
            return TodoItem(
              text: this.tasks[index].text,
              isChecked: this.tasks[index].isChecked,
              onChange: (value) {
                return this.onChange(tasks[index], value);
              },
            );
          },
        ),
      ),
    );
  }
}

class TodoItem extends StatelessWidget {
  TodoItem({
    @required this.isChecked,
    @required this.text,
    @required this.onChange,
  });
  final bool isChecked;
  final String text;
  final Function onChange;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        this.text,
        style: TextStyle(
          decoration: this.isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: this.isChecked,
        onChanged: this.onChange,
      ),
    );
  }
}
