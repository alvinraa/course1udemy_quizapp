import 'package:flutter/material.dart';

import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.answerQuestion,
    required this.questions,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        const SizedBox(height: 20),

        /// ... untuk mengambil isi dari list menjadi list itu sendiri?
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            () => answerQuestion(answer['score']),
            answer['text'] as String,
            answer['choice'] as String,
          );
        }).toList(),
      ],
    );
  }
}
