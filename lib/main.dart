import 'package:flutter/material.dart';

import './questions.dart';
import './answer.dart';

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
  final List<Map<String, Object>> questions = const [
    {
      'questionText': 'Apa warna favoritmu?',
      'answer': ['Merah', 'Kuning', 'Hijau', 'Hitam'],
    },
    {
      'questionText': 'Apa hewan favoritmu?',
      'answer': ['Kucing', 'Anjing', 'Kelinci', 'Singa'],
    },
    {
      'questionText': 'Siapa presiden favoritmu?',
      'answer': ['person1', 'person2', 'person3', 'person4'],
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < questions.length) {
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
          title: const Text('here Appbar!'),
        ),
        body: Center(
          child: _questionIndex < questions.length
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Question(
                      questions[_questionIndex]['questionText'],
                    ),
                    const SizedBox(height: 20),

                    /// ... untuk mengambil isi dari list menjadi list itu sendiri?
                    ...(questions[_questionIndex]['answer'] as List<String>)
                        .map((answer) {
                      return Answer(_answerQuestion, answer);
                    }).toList(),
                  ],
                )
              : Text('Finish'),
        ),
      ),
    );
  }
}
