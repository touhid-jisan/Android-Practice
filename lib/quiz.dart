import 'package:flutter/cupertino.dart';
import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {
  final int index;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  Quiz(this.questions, this.answerQuestion, this.index);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Question(questions[index]['questionText']),
        ...(questions[index]['answer'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']),answer['text']);
        }).toList()
      ],
    );
  }

}