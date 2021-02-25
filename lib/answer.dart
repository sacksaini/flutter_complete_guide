import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answerText;
  Answer(this.answerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
        child: RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.blueAccent,
            textColor: Colors.black,
            child: Text(answerText,
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.black,
                )),
            onPressed: answerHandler),
      ),
    );
  }
}
