import 'package:flutter/material.dart';
import 'package:hbdayu/quiz/question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> indexPertanyaan;
  final pointerIndex;
  final Function saatDitekan;

  Quiz({this.indexPertanyaan, this.pointerIndex, this.saatDitekan});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(indexPertanyaan[pointerIndex]['textPertanyaan']),
        ...(indexPertanyaan[pointerIndex]['jawaban']
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => saatDitekan(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
