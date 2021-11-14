import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _totalScore = 0;
  int _questionIndex = 0;

  void answerQuestion(score) {
    _totalScore +=score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    print("Answer chosen");
  }

  void _restQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  final List<Map<String, Object>> _question = [
    {
      "questionText": "what's your favorite color?",
      "answers": [
        {'Text': 'black', 'score': 10},
        {'Text': 'green', 'score': 20},
        {'Text': 'blue', 'score': 30},
        {'Text': 'Yellow', 'score': 40},
      ]
    },
    {
      "questionText": "what's your favorite animal?",
      "answers": [
        {'Text': 'Rabbit', 'score': 10},
        {'Text': 'Tiger', 'score': 20},
        {'Text': 'Elephant', 'score': 30},
        {'Text': 'Lion', 'score': 10},
      ]
    },
    {
      "questionText": "what's your your  Name?",
      "answers": [
        {'Text': 'Amr', 'score': 10},
        {'Text':'Ahmed' , 'score' :20},
        {'Text':'Mohmed' , 'score' :30},
        {'Text':'mustafa' , 'score' :40},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("quiz"),
        ),
        body: Container(
            width: double.infinity,
            child: _questionIndex < _question.length
                ? Quiz(
                    answerQuestion: answerQuestion,
                    question: _question,
                    questionIndex: _questionIndex,
                  )
                : Result(
                    restQuiz: _restQuiz,
              resultScore: _totalScore,
                  )),
      ),
    );
  }
}
