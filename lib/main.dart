import 'package:course1_quizapp/quiz.dart';
import 'package:course1_quizapp/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'Hitunglah hasil dari -12 x (18 + (-27)) adalah....',
      'answer': [
        {'choice': 'A. ', 'text': '-216', 'score': 0},
        {'choice': 'B. ', 'text': '108', 'score': 1},
        {'choice': 'C. ', 'text': '216', 'score': 0},
        {'choice': 'D. ', 'text': '-108', 'score': 0},
      ],
    },
    {
      'questionText': 'Hitunglah hasil dari -12 x (18 + (-27)) adalah....',
      'answer': [
        {'choice': 'A. ', 'text': '-216', 'score': 0},
        {'choice': 'B. ', 'text': '108', 'score': 1},
        {'choice': 'C. ', 'text': '216', 'score': 0},
        {'choice': 'D. ', 'text': '-108', 'score': 0},
      ],
    },
    {
      'questionText': 'Hitunglah hasil dari -12 x (18 + (-27)) adalah....',
      'answer': [
        {'choice': 'A. ', 'text': '-216', 'score': 0},
        {'choice': 'B. ', 'text': '108', 'score': 1},
        {'choice': 'C. ', 'text': '216', 'score': 0},
        {'choice': 'D. ', 'text': '-108', 'score': 0},
      ],
    },
    {
      'questionText': 'Hitunglah hasil dari -12 x (18 + (-27)) adalah....',
      'answer': [
        {'choice': 'A. ', 'text': '-216', 'score': 0},
        {'choice': 'B. ', 'text': '108', 'score': 1},
        {'choice': 'C. ', 'text': '216', 'score': 0},
        {'choice': 'D. ', 'text': '-108', 'score': 0},
      ],
    },
    {
      'questionText': 'Hitunglah hasil dari -12 x (18 + (-27)) adalah....',
      'answer': [
        {'choice': 'A. ', 'text': '-216', 'score': 0},
        {'choice': 'B. ', 'text': '108', 'score': 1},
        {'choice': 'C. ', 'text': '216', 'score': 0},
        {'choice': 'D. ', 'text': '-108', 'score': 0},
      ],
    },
    {
      'questionText': 'Hitunglah hasil dari -12 x (18 + (-27)) adalah....',
      'answer': [
        {'choice': 'A. ', 'text': '-216', 'score': 0},
        {'choice': 'B. ', 'text': '108', 'score': 1},
        {'choice': 'C. ', 'text': '216', 'score': 0},
        {'choice': 'D. ', 'text': '-108', 'score': 0},
      ],
    },
    {
      'questionText': 'Hitunglah hasil dari -12 x (18 + (-27)) adalah....',
      'answer': [
        {'choice': 'A. ', 'text': '-216', 'score': 0},
        {'choice': 'B. ', 'text': '108', 'score': 1},
        {'choice': 'C. ', 'text': '216', 'score': 0},
        {'choice': 'D. ', 'text': '-108', 'score': 0},
      ],
    },
    {
      'questionText': 'Hitunglah hasil dari -12 x (18 + (-27)) adalah....',
      'answer': [
        {'choice': 'A. ', 'text': '-216', 'score': 0},
        {'choice': 'B. ', 'text': '108', 'score': 1},
        {'choice': 'C. ', 'text': '216', 'score': 0},
        {'choice': 'D. ', 'text': '-108', 'score': 0},
      ],
    },
    {
      'questionText': 'Hitunglah hasil dari -12 x (18 + (-27)) adalah....',
      'answer': [
        {'choice': 'A. ', 'text': '-216', 'score': 0},
        {'choice': 'B. ', 'text': '108', 'score': 1},
        {'choice': 'C. ', 'text': '216', 'score': 0},
        {'choice': 'D. ', 'text': '-108', 'score': 0},
      ],
    },
    {
      'questionText': 'Hitunglah hasil dari -12 x (18 + (-27)) adalah....',
      'answer': [
        {'choice': 'A. ', 'text': '-216', 'score': 0},
        {'choice': 'B. ', 'text': '108', 'score': 1},
        {'choice': 'C. ', 'text': '216', 'score': 0},
        {'choice': 'D. ', 'text': '-108', 'score': 0},
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {
      print('more question');
    } else {
      print('no more question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quis Matematika Dasar'),
        ),
        body: Center(
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex,
                )
              : Result(resultScore: _totalScore, resetWidget: _resetQuiz),
        ),
      ),
    );
  }
}
