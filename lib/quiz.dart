import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
class Quiz extends StatelessWidget {
  Quiz({this.questionIndex,this.answerQuestion,this.question});
  final  List<Map<String , Object>> question;
  final int questionIndex;
  final Function answerQuestion;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionText: question[ questionIndex]["questionText"],),
        ...(question[questionIndex]["answers"]as List<Map<String , Object>>).map((answer){
          return Answer(x:()=>answerQuestion(answer['score']),answerQuestion: answer['Text'],);
        }).toList(),

      ],
    );
  }
}
