import 'package:flutter/material.dart';

import './quiz.dart';
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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      print("Answer Chosen!");
    });
  }

  @override
  Widget build(BuildContext context) {
    final _questions = [
      {
        'questionText': "What is your favourite colour?",
        'answers': ['Black', "Red", "Green", "White"]
      },
      {
        'questionText': "What is your favourite animal?",
        'answers': ['Rabbit', "Hawk", "Snake", "Elephant"]
      },
      {
        'questionText': "What is your favourite food?",
        'answers': ["Pizza", "Pasta", "Sandwich"]
      },
      {
        'questionText': "What is your hobby?",
        'answers': ["Reading", "Exercising", "Writing", "Singing"]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz App')),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Center(
                child: Text("Congratulations! You Completed the Quiz"),
              ),
      ),
    );
  }
}
