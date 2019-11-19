import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Question extends StatelessWidget {
  final String qustionText;

  Question(this.qustionText);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin:  EdgeInsets.all(20),
      width: double.infinity ,
      child:
        Text(qustionText,
          style: TextStyle(fontSize: 25 ),
          textAlign: TextAlign.center,
    ),
    );
  }

}