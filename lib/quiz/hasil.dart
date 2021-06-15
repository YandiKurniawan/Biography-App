import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  int totalScore;
  final Function backToQuiz;
  Hasil(this.totalScore, this.backToQuiz);

  String get paragrafHasil {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'kamu hebat! \n Nilai kamu adalah $totalScore';
    } else {
      resultText = 'wow amazing! \n Nilai kamu adalah $totalScore';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            paragrafHasil,
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: backToQuiz,
            child: Text('Kembali ke awal!'),
          )
        ],
      ),
    );
  }
}
