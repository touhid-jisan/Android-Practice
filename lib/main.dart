import 'package:flutter/material.dart';
import 'package:flutter_app/question.dart';

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
  void answerQuestion() {
    setState(() {
      _index = _index+1;
    });

    print(_index);
  }
  
  @override
  Widget build(BuildContext context) {

    var question = ['Question 1',
      'Question 2',
      'Question 3',
      'Question 4'
    ];
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(
          title: Text('My First App'),),
       body: Column(
         children: [
           Question(question[_index]),
           /*
           RaisedButton(child: Text('Question 1'), onPressed: () => print('Answer 1 chosen'),),
           RaisedButton(child: Text('Question 2'), onPressed: () {print('Answer 2 Chosen');},),
           RaisedButton(child: Text('Question 3'), onPressed: answerQuestion,),

            */
           RaisedButton(child: Text('Question 1'), onPressed: answerQuestion,),
           RaisedButton(child: Text('Question 2'), onPressed: answerQuestion,),
           RaisedButton(child: Text('Question 3'), onPressed: answerQuestion,),
         ],
       ),
     ),
   );
  }

}