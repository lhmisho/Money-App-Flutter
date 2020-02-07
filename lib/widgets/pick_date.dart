import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PickDate extends StatelessWidget {
  final Function picker;
  DateTime selectedDate;
  PickDate(this.picker, this.selectedDate);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(selectedDate == null
                ? 'No date choosen'
                : 'Picked date ${DateFormat.yMd().format(selectedDate)}'),
          ),
          Platform.isIOS
              ? CupertinoButton(
                child: Text(
                    'Choose date',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                onPressed: picker,
              )
              : FlatButton(
                  textColor: Theme.of(context).primaryColor,
                  child: Text(
                    'Choose date',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: picker,
                )
        ],
      ),
    );
  }
}
