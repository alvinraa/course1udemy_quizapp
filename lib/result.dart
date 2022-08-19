import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetWidget;

  const Result({
    required this.resultScore,
    required this.resetWidget,
    Key? key,
  }) : super(key: key);

  String get resultPhrase {
    String resultText = '';

    if (resultScore >= 10) {
      resultText = 'a';
    } else if (resultScore > 8) {
      resultText = 'b';
    } else if (resultScore > 6) {
      resultText = 'c';
    } else if (resultScore > 4) {
      resultText = 'd';
    } else {
      resultText = 'e';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Score anda $resultScore',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: resetWidget,
            child: const Text('Coba lagi'),
          )
        ],
      ),
    );
  }
}
