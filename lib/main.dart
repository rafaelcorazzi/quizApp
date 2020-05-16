import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'Qual a sua cor favorita ?',
      'answers': [{'text': 'Preto', 'score': 10}, {'text': 'Verde', 'score': 7}, {'text': 'Roxo', 'score': 1}]
    },
    {
      'questionText': 'Qual a seu animal favorita ?',
      'answers': [{'text': 'Giraffa', 'score': 12}, {'text':'Leao', 'score': 14}, {'text':'Zebra', 'score': 9}]
    },
    {
      'questionText': 'Qual a sua comida favorita ?',
      'answers': [{'text':'Macarrao', 'score':9}, {'text': 'Lasanha', 'score': 12}, {'text': 'Arroz com feijao', 'score': 10}]
    }
  ];
  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
  void _answerQuestion(int score) {
    //var aBool = true;
    //aBool = false;
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('More questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Hello World"),
              backgroundColor: Colors.blueAccent,
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questions: _questions,
                    questionIndex: _questionIndex)
                : Result(_totalScore, _resetQuiz)));
  }
}
