import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;
  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //infinity takes up as much space as it can
      margin: EdgeInsets.all(12), //all adds margins to all four sides
      child: Text(
        questionText,
        style: TextStyle(fontSize: 34, color: Colors.blue),
        textAlign: TextAlign.center,
      ),
    );
  }
}
