import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer Chosen!");
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
            Text('The question!'),
            ElevatedButton(onPressed: answerQuestion, child: Text("Answer 1")),
            ElevatedButton(onPressed: answerQuestion, child: Text("Answer 2")),
            ElevatedButton(onPressed: answerQuestion, child: Text("Answer 3")),
          ],
        ),
      ),
    );
  }
}
