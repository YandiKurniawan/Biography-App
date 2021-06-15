import 'package:flutter/material.dart';
import 'package:hbdayu/expenses/transaction.dart';

class BodyDetails extends StatelessWidget {
  final Transaction transaction;
  BodyDetails({this.transaction});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Text(transaction.title),
          )
        ],
      ),
    );
  }
}
