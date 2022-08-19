import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  final String choices;

  Answer(
    this.selectHandler,
    this.answerText,
    this.choices,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text(choices), Text(answerText)],
        ),
      ),
    );
  }
}
