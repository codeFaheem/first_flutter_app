import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  final _questions = const [
    {
      "questionText": "Which color do you like the most?",
      "answers": [
        {"text": "White", "score": 2},
        {"text": "Green", "score": 4},
        {"text": "Black", "score": 6},
        {"text": "Red", "score": 9},
      ],
    },
    {
      "questionText": "What's You Fovourite \"Animal\"?",
      "answers": [
        {"text": "Rabbit", "score": 2},
        {"text": "Squirrel", "score": 5},
        {"text": "Lion", "score": 7},
        {"text": "Elephant", "score": 3},
      ]
    },
    {
      "questionText": "Who is your friend?",
      "answers": [
        {"text": "Faheem", "score": 1},
        {"text": "Faheem", "score": 1},
        {"text": "Faheem", "score": 1},
        {"text": "Faheem", "score": 1},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We Have More Questions!");
    }
  }

  void _resetHandler() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First Flutter App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetHandler),
      ),
    );
  }
}
