import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function waktuDitekan;
  String answer;
  Answer(this.waktuDitekan, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(onPressed: waktuDitekan, child: Text(answer)),
    );
  }
}
