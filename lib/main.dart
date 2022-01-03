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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      print("Answer Chosen!");
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
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
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
