import 'package:flutter/material.dart';
import 'package:todoey/tasks/rounded_well.dart';
import 'package:provider/provider.dart';

import 'task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RoundedWell(
        child: Consumer<TaskListModel>(
          builder: (context, taskList, child) => ListView.builder(
            padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 80.0),
            itemCount: taskList.tasks.length,
            itemBuilder: (context, index) => TodoItem(
              text: taskList.get(index).text,
              isChecked: taskList.get(index).isChecked,
              onChange: (value) => taskList.toggle(index),
              onLongPress: () => taskList.delete(index),
            ),
          ),
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
    @required this.onLongPress,
  });
  final bool isChecked;
  final String text;
  final Function onChange;
  final Function onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => this.onChange(!this.isChecked),
      onLongPress: () => this.onLongPress(),
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
