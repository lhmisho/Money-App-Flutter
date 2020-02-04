import 'package:flutter/material.dart';

class PickDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        children: <Widget>[
          Text('No date chossen'),
          FlatButton(
            textColor: Theme.of(context).primaryColor,
            child: Text(
              'Choose date',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
