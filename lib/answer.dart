import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: RaisedButton(
        color: Colors.blueAccent,
        child: Text(answerText, style: TextStyle(color: Colors.white, fontSize: 20),),
        onPressed: selectHandler,
      ),
    );
  }
}
