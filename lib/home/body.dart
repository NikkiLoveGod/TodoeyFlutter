import 'package:flutter/material.dart';
import 'package:todoey/home/rounded_well.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RoundedWell(
        child: ListView(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 80.0),
          children: [
            TodoItem(),
            TodoItem(),
            TodoItem(),
            TodoItem(),
            TodoItem(),
            TodoItem(),
            TodoItem(),
            TodoItem(),
            TodoItem(),
            TodoItem(),
            TodoItem(),
            TodoItem(),
            TodoItem(),
          ],
        ),
      ),
    );
  }
}

class TodoItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Todo item'),
      trailing: Checkbox(value: true, onChanged: null),
    );
  }
}
