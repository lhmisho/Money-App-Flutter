import 'package:flutter/material.dart';
import './pick_date.dart';

class NewTransaction extends StatefulWidget {
  final Function transactionHandler;

  NewTransaction(this.transactionHandler);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleInputController = TextEditingController();

  final amountInputController = TextEditingController();

  void submitedData() {
    final enteredTitle = titleInputController.text;
    final enteredAmount = double.parse(amountInputController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }
    print(enteredTitle);
    print(enteredAmount);
    widget.transactionHandler(enteredTitle, enteredAmount);
    Navigator.of(context).pop();
  }

  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleInputController,
              onSubmitted: (_) => submitedData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountInputController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitedData(),
            ),
            PickDate(),
            RaisedButton(
              child: Text('Add'),
              textColor: Theme.of(context).textTheme.button.color,
              color: Theme.of(context).primaryColor,
              onPressed: submitedData,
            )
          ],
        ),
      ),
    );
  }
}
