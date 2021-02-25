import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore > 4 && resultScore < 6)
      resultText = "\nYou Passed";
    else if (resultScore > 5)
      resultText = "Well Done Jazzlyn!!";
    else if (resultScore == 8)
      resultText = "Excellent! You've got fullmarks!";
    else
      resultText = "You Failed";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 32),
            textAlign: TextAlign.center,
          ),
          Text("Your score is $resultScore / 8\n\n"),
          FlatButton(
            child: Text("Retake Text"),
            color: Colors.blue,
            hoverColor: Colors.blue[00],
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
