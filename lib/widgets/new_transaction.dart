import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function transactionHandler;
  final titleInputController = TextEditingController();
  final amountInputController = TextEditingController();

  NewTransaction(this.transactionHandler);

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
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountInputController,
            ),
            FlatButton(
              child: Text('Add'),
              textColor: Colors.purple,
              onPressed: () {
                print(titleInputController.text);
                transactionHandler(titleInputController.text, double.parse(amountInputController.text));
              },
            )
          ],
        ),
      ),
    );
  }
}
