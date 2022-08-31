import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuestions;
  final int score;
  const Result({Key key, this.resetQuestions, this.score}) : super(key: key);

  String get resultText {
    String result = "Congrats";
    if (score <= 8) {
      result = "Innocent";
    } else if (score <= 20) {
      result = "A bit mean";
    } else {
      result = "Danger to society";
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            style: TextStyle(
                fontSize: 20,
                color: Colors.orange,
                decoration: TextDecoration.underline),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(50, 20, 50, 0),
            child: ElevatedButton(
                onPressed: () => resetQuestions(), child: Text('Start Again')),
          )
        ],
      ),
    );
  }
}
