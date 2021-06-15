import 'package:flutter/material.dart';
import 'package:hbdayu/quiz/hasil.dart';
import 'package:hbdayu/quiz/quiz.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _pointerIndex = 0;

  var _indexPertanyaan = [
    {
      'textPertanyaan': 'apakah ayu cantik?',
      'jawaban': [
        {'text': 'sangat cantik', 'score': 10},
        {'text': 'cantik banget tapi milia an', 'score': 5},
        {'text': 'rahasia', 'score': 0},
      ],
    },
    {
      'textPertanyaan': 'thinking bout so many thing',
      'jawaban': [
        {'text': 'hanya coba coba', 'score': 5},
        {'text': 'ni gaje', 'score': 0},
        {'text': 'euy', 'score': 10},
        {'text': 'oy', 'score': 8},
      ],
    },
    {
      'textPertanyaan': 'apakah yandi ganteng',
      'jawaban': [
        {'text': 'sangat ganteng', 'score': 20},
        {'text': 'wonderful banget cantik', 'score': 0},
      ],
    }
  ];
  var _totalScore = 0;

  void _saatDitekan(int score) {
    _totalScore += score;
    setState(() {
      _pointerIndex = _pointerIndex + 1;
    });
  }

  void _backToQuiz() {
    setState(() {
      _pointerIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hbd ayu'),
        ),
        body: _pointerIndex < _indexPertanyaan.length
            ? Quiz(
                indexPertanyaan: _indexPertanyaan,
                saatDitekan: _saatDitekan,
                pointerIndex: _pointerIndex,
              )
            : Hasil(_totalScore, _backToQuiz),
      ),
    );
  }
}
