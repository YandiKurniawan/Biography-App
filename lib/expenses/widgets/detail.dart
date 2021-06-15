import 'package:flutter/material.dart';
import 'package:hbdayu/expenses/transaction.dart';
import 'package:hbdayu/expenses/widgets/body_detail.dart';

class Details extends StatelessWidget {
  final Transaction transaction;
  Details({this.transaction});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: BodyDetails(
        transaction: transaction,
      ),
    );
  }
}
