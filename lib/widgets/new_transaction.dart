import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function transactionHandler;
  final titleInputController = TextEditingController();
  final amountInputController = TextEditingController();

  NewTransaction(this.transactionHandler);

  void submitedData() {
    final enteredTitle = titleInputController.text;
    final enteredAmount = double.parse(amountInputController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }
    print(enteredTitle);
    print(enteredAmount);
    transactionHandler(enteredTitle, enteredAmount);
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
            FlatButton(
              child: Text('Add'),
              textColor: Colors.purple,
              onPressed: submitedData,
            )
          ],
        ),
      ),
    );
  }
}
