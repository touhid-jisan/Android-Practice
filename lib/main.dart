import 'package:flutter/material.dart';
import 'package:flutter_app/question.dart';
import 'package:flutter_app/answer.dart';

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

  int _index = 0;
  void _answerQuestion() {
    setState(() {
      _index = _index+1;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    var questions = [
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
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(
          title: Text('My First App'),),
       body: Column(
         children: [
           Question(questions[_index]['questionText']),
           /*
           RaisedButton(child: Text('Question 1'), onPressed: () => print('Answer 1 chosen'),),
           RaisedButton(child: Text('Question 2'), onPressed: () {print('Answer 2 Chosen');},),
           RaisedButton(child: Text('Question 3'), onPressed: answerQuestion,),

            */
           ...(questions[_index]['answer'] as List<String>).map((answer) {
            return Answer(_answerQuestion , answer);
           }).toList()

           ],
       ),
     ),
   );
  }

}