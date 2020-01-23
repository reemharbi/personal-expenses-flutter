import 'package:flutter/material.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Watch',
      amount: 99.99,
      date: DateTime.now(),
    ),
     Transaction(
      id: 't3',
      title: 'Phone',
      amount: 199.99,
      date: DateTime.now(),
    ),
     Transaction(
      id: 't4',
      title: 'Gloves',
      amount: 1.95,
      date: DateTime.now(),
    ),
     Transaction(
      id: 't5',
      title: 'Makeup',
      amount: 104.99,
      date: DateTime.now(),
    ),
     Transaction(
      id: 't6',
      title: 'Groceries',
      amount: 41.23,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
