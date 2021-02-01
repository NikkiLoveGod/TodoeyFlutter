import 'package:flutter/material.dart';

class TasksHeading extends StatefulWidget {
  @override
  _TasksHeadingState createState() => _TasksHeadingState();
}

class _TasksHeadingState extends State<TasksHeading> {
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
          Text(
            '12 Tasks',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
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
