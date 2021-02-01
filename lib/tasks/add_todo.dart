import 'package:flutter/material.dart';
import 'package:todoey/tasks/rounded_well.dart';
import 'package:provider/provider.dart';

import 'task.dart';

class AddTodoFab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) => SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: AddTodoModal(),
          ),
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      child: Icon(
        Icons.add,
        size: 30.0,
      ),
    );
  }
}

class AddTodoModal extends StatelessWidget {
  void add(context, Task task) {
    Provider.of<TaskListModel>(context, listen: false).add(task);
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    String text;

    return RoundedWell(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'New Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: TextField(
                controller: controller,
                onChanged: (value) => text = value,
                autofocus: true,
              ),
            ),
            RaisedButton(
              elevation: 5.0,
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              onPressed: () {
                add(
                  context,
                  Task(
                    text: text,
                    isChecked: false,
                  ),
                );
                controller.clear();
                Navigator.of(context).pop();
              },
              child: Text('Add task'),
            ),
          ],
        ),
      ),
    );
  }
}
