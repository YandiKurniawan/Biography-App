import 'package:flutter/material.dart';
import 'package:hbdayu/expenses/transaction.dart';
import 'package:hbdayu/expenses/widgets/detail.dart';
//import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransaction;
  TransactionList(this.userTransaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Details(
                          transaction: theUserTransaction[index],
                        ))),
            child: Card(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purple,
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '${userTransaction[index].amount}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userTransaction[index].title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Text(
                      //   DateFormat.yMMMd().format(
                      //     userTransaction[index].date,
                      //   ),
                      //   style: TextStyle(
                      //     color: Colors.grey,
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: userTransaction.length,
      ),
    );
  }
}
