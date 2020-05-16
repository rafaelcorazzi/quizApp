import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function selectHandler;

  Result(this.resultScore, this.selectHandler);
  String get resultPhrase {
    var resultText = "Voce terminou";
    if(resultScore <= 20){
      resultText = "Oh , voce e um cara legal";
    } else if(resultScore <= 28) {
      resultText = "Oh, voce e doidao";
    }else{
      resultText = "Voce e malucooooo;...";
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
         child: Column(children: <Widget>[
           Text(resultPhrase, style: TextStyle(fontSize: 36),),
           FlatButton(child: Text('Restart quiz'),onPressed: selectHandler,)
         ],)
      );
  }
}
