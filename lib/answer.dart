import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final String answerQuestion;
  final Function x;
  Answer({this.answerQuestion,this.x});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child :  RaisedButton(
        child: Text(answerQuestion , style: TextStyle(
          fontSize: 25,
        ),),
        color: Colors.blueAccent,
        onPressed: x
      ),
    );
  }
}
