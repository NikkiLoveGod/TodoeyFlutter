import 'package:flutter/material.dart';

class RoundedWell extends StatelessWidget {
  RoundedWell({this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: this.child,
    );
  }
}
