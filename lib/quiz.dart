import 'package:flutter/material.dart';
import './questions.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[questionIndex]['question']),
        ...(questions[questionIndex]['answer'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
