import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  const Question({Key key, this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 30, bottom: 30),
      color: Colors.black26,
      width: double.infinity,
      child: Text(
        question,
        style: TextStyle(
          fontSize: 28.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
