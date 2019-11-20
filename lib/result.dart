import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);
  String get resultPhase {
    String r = '';
    if(resultScore <= 8) {
      r = 'You are awesome';
    } else if(resultScore <= 12 ) {
      r = 'You are good';
    } else if(resultScore <=16) {
      r = 'You are.... strange?';
    } else {
      r = 'You are bad';
    }
    return r;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Column(
          children: <Widget>[
            Text(
              resultPhase,
              textAlign: TextAlign.center,
              style:
              TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold
              ),
            ),
            FlatButton(
              child: Text('Restart Quiz!'),
              onPressed: resetQuiz,
              textColor: Colors.blue,
            )
          ],
        )
    );
  }

}