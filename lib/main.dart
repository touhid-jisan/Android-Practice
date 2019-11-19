import 'package:flutter/material.dart';
import 'package:flutter_app/question.dart';
import 'package:flutter_app/answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {


  static const questions = [
    {
      'questionText' : 'Whats your fav color?',
      'answer' : ['Black', 'White', 'Blue', 'Green'],
    },
    {
      'questionText' : 'Whats your fav animal?',
      'answer' : ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText' : 'Whats your fav abc?',
      'answer' : ['abc', 'def', 'ghi', 'jkl'],
    },
    {
      'questionText' : 'Whats your fav color?',
      'answer' : ['1', 'W23hite', 'B4lue', 'Gre66en'],
    },
  ];

  int _index = 0;
  void _answerQuestion() {

    setState(() {
      _index = _index+1;
    });
  }
  
  @override
  Widget build(BuildContext context) {

   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(
          title: Text('My First App'),),
       body: _index < questions.length ? Quiz(questions, _answerQuestion, _index)
           : Result(),
       ),
     );
  }

}