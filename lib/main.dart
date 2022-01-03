import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

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
        'answers': [
          {"text": "Black", "score": 10},
          {"text": "Red", "score": 1},
          {"text": "Green", "score": 7},
          {"text": "White", "score": 4},
        ]
      },
      {
        'questionText': "What is your favourite animal?",
        'answers': [
          {"text": "Rabbit", "score": 4},
          {"text": "Snake", "score": 1},
          {"text": "Elephant", "score": 7},
          {"text": "Hawk", "score": 10},
        ]
      },
      {
        'questionText': "What is your favourite beverage?",
        'answers': [
          {"text": "Coke", "score": 7},
          {"text": "Juice", "score": 4},
          {"text": "Tea", "score": 1},
          {"text": "Coffee", "score": 10},
        ]
      },
      {
        'questionText': "What is your hobby?",
        'answers': [
          {"text": "Reading", "score": 10},
          {"text": "Writing", "score": 7},
          {"text": "Exercising", "score": 4},
          {"text": "Singing", "score": 1},
        ]
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
            : Result(_totalScore),
      ),
    );
  }
}
