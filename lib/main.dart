import "package:flutter/material.dart";
import "./questions.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  //main class where no changes are dne
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // Underscore converts a class into a private class
  // This is a state of the MyApp class. All changes are done here and not on the main class
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
      'What\s your favourite color?',
      'What\'s your favourite animal'
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
              backgroundColor: Colors.lightBlue,
            ),
            body: Column(
              children: [
                Questions(questions[_questionIndex]),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: _answerQuestion,
                ),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: _answerQuestion,
                ),
                RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: _answerQuestion,
                ),
              ],
            )));
  }
}
