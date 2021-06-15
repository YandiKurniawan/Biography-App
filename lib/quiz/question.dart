import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String dataAwal;
  Question(this.dataAwal);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        dataAwal,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
