import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/button_answer.dart';
import 'package:flutter_complete_guide/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  const Quiz(
      {Key key,
      @required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        question: questions[questionIndex]['questionText'],
      ),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) => ButtonAnswer(
                onPress: () => answerQuestion(answer['score'] as int),
                title: answer['text'],
              ))
          .toList()
    ]);
  }
}
