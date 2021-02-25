import "package:flutter/material.dart";
import 'package:flutter_complete_guide/result.dart';
import "./quiz.dart";
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  //main class where no changes are dne
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // Underscore converts a class into a private class
  // This is a state of the MyApp class. All changes are done here and not on the main class.
  var _questionIndex = 0;
  int questionNumber = 1;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      questionNumber = 1;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      //SetState Rerenders the desired part of the app and not every pixel on screen.

      _questionIndex++;
      questionNumber++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'question': 'Fill in the Blanks: \n Jazzlyn is playing ___ the park.',
        'answer': [
          {'text': 'in', 'score': 1},
          {'text': 'at', 'score': 1},
          {'text': 'on', 'score': 0},
          {'text': 'into', 'score': 0},
        ]
      },
      {
        'question': '7 + 12 = ?',
        'answer': [
          {'text': '9', 'score': 0},
          {'text': '19', 'score': 1},
          {'text': '18', 'score': 0},
          {'text': '12', 'score': 0},
        ]
      },
      {
        'question': 'Fill in the Blanks: \n I ___ a good dancer.',
        'answer': [
          {'text': 'is', 'score': 0},
          {'text': 'am', 'score': 1},
        ]
      },
      {
        'question': 'Fill in the Blanks: \n I want ___ barbie doll.',
        'answer': [
          {'text': 'a', 'score': 1},
          {'text': 'an', 'score': 0},
          {'text': 'the', 'score': 0},
        ]
      },
      {
        'question': 'Fill in the Blanks: \n Do you ____ two pencils?',
        'answer': [
          {'text': 'are', 'score': 0},
          {'text': 'has', 'score': 0},
          {'text': 'have', 'score': 1},
        ]
      },
      {
        'question':
            'susie needs 13 balloons. She already has 4 balloons. How many more balloons does she need?',
        'answer': [
          {'text': '5', 'score': 0},
          {'text': '9', 'score': 1},
          {'text': '8', 'score': 0},
          {'text': '2', 'score': 0},
        ]
      },
      {
        'question':
            'Jazzlyn have 6 toys, she gives 2 toys to Trisha, how may toys are left with jazzlyn?',
        'answer': [
          {'text': '53', 'score': 0},
          {'text': '8', 'score': 1},
          {'text': '7', 'score': 0},
          {'text': '9', 'score': 0},
        ]
      },
      {
        'question': 'Which of the following words is a preposition?',
        'answer': [
          {'text': 'dance', 'score': 0},
          {'text': 'pretty', 'score': 0},
          {'text': 'bird', 'score': 0},
          {'text': 'for', 'score': 1},
        ]
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: questionNumber < 9
                ? AppBar(
                    title: Center(child: Text('Question No. $questionNumber')),
                    backgroundColor: Colors.lightBlue,
                  )
                : AppBar(
                    title: Center(
                      child: Text(
                        "Results",
                      ),
                    ),
                  ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questions: _questions,
                    questionIndex: _questionIndex,
                  )
                : Result(_totalScore, _resetQuiz)));
  }
}
