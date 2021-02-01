import 'package:flutter/material.dart';
import 'package:todoey/tasks/rounded_well.dart';

import 'Task.dart';

class AddTodoFab extends StatelessWidget {
  AddTodoFab({@required this.onAdd});
  final void Function(Task task) onAdd;

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
            child: AddTodoModal(
              onAdd: this.onAdd,
            ),
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
  AddTodoModal({@required this.onAdd});
  final void Function(Task task) onAdd;

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
                this.onAdd(Task(
                  text: text,
                  isChecked: false,
                ));
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
