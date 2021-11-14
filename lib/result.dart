import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final Function restQuiz;
  final resultScore;

  String get resultPhrase{
    String resultText;
    if(resultScore>=70){
      resultText = "you are awesome";
    }
    else if(resultScore>=40){
      resultText = "you are likable";
    }
    else{
      resultText = "you are so bad";
    }
    return resultText;

}
  Result({this.restQuiz,this.resultScore});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30),
          ),
          FlatButton(onPressed: restQuiz, child: Text(
            "Restart the App",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30
            ),
          ))
        ],
      ),
    );
  }
}
