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
      'answer' : [
        {'text' : 'Black', 'score':10},
        {'text' : 'White', 'score': 1},
        {'text' : 'Blue', 'score' : 5},
        {'text' : 'Green', 'score' : 8},],

    },
    {
      'questionText' : 'Whats your fav animal?',
      'answer' : [
        {'text' : 'Rabbit', 'score':7},
        {'text' : 'Dog', 'score': 5},
        {'text' : 'Cat', 'score' : 2},
        {'text' : 'Snake', 'score' : 10},],
    },
    {
      'questionText' : 'Whats your fav sports?',
      'answer' : [
        {'text' : 'Football', 'score':1},
        {'text' : 'Cricket', 'score': 4},
        {'text' : 'Badminton', 'score' : 5},
        {'text' : 'Cycling', 'score' : 6},],
    },
    {
      'questionText' : 'Whats your fav academy?',
      'answer' : [
        {'text' : 'Udemy', 'score':2},
        {'text' : 'Khan Academy', 'score': 5},
        {'text' : 'Coursera', 'score' : 6},
        {'text' : 'edX', 'score' : 7},],
    },
  ];

  int _index = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _index = _index+1;
    });
  }
  void _resetQuiz() {
    setState(() {
      _index = 0;
      _totalScore =0;
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
           : Result(_totalScore, _resetQuiz),
       ),
     );
  }

}