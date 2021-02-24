import "package:flutter/material.dart";
import 'package:flutter_complete_guide/answer.dart';
import "./questions.dart";

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
  void _answerQuestion() {
    setState(() {
      //SetState Rerenders the desired part of the app and not every pixel on screen.
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': 'What\'s your favourite Color?',
        'answer': ['Blue', 'Red', 'Pink', 'Yellow']
      },
      {
        'question': 'What\'s your favourite Animal?',
        'answer': ['Panda', 'Dog', 'Tiger', 'Rabbit']
      },
      {
        'question': 'What\'s your favourite Phone?',
        'answer': ['Nokia', 'Apple', 'Redmi', 'Samsung']
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
              backgroundColor: Colors.lightBlue,
            ),
            body: Column(
              children: [
                Questions(questions[_questionIndex]['question']),
                Answer(_answerQuestion),
                Answer(_answerQuestion),
                Answer(_answerQuestion),
              ],
            )));
  }
}
