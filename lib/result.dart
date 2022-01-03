import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 10) {
      resultText = "You don't have any friends";
    } else if (resultScore <= 20) {
      resultText = "You want to have friends but have very few.";
    } else if (resultScore <= 30) {
      resultText = "You are pretty likeable among friends.";
    } else {
      resultText = "You are very popular among friends";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text("Restart Quiz"),
            style: TextButton.styleFrom(primary: Colors.deepPurple),
          )
        ],
      ),
    );
  }
}
