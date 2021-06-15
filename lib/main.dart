import 'package:flutter/material.dart';
import 'package:hbdayu/expenses/widgets/new_transaction.dart';
import 'package:hbdayu/expenses/widgets/transaction_list.dart';
import 'package:hbdayu/expenses/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        //amount: txAmount,
        // date: DateTime.now(),
        title: txTitle);

    setState(() {
      theUserTransaction.add(newTx);
    });
  }

  void bukaSheet(BuildContext bsc) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: bsc,
      builder: (btsc) {
        return FractionallySizedBox(
          heightFactor: 0.3,
          child: ListView(children: [NewTransaction(_addNewTransaction)]),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        // actions: [
        //   IconButton(icon: Icon(Icons.add), onPressed: () {}),
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              color: Colors.amber,
              child: Container(
                height: 50,
                width: double.infinity,
                child: Text(
                  'Sejarah Kehidupanku',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              elevation: 5,
            ),
            TransactionList(theUserTransaction),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () => bukaSheet(context),
      // ),
    );
  }
}
