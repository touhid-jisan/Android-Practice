import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qustionText;

  Question(this.qustionText);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity ,
      child:
        Text(qustionText,
          style: TextStyle(fontSize: 25 ),
          textAlign: TextAlign.center,
    ),
    );
  }

}