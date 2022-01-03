import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = 1;
      print("Answer Chosen!");
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your favourite animal?",
      "What is your favourite colour?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App')),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(),
            Answer(),
            Answer()
          ],
        ),
      ),
    );
  }
}
