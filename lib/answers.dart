import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final VoidCallback questionUpdateFunction;
  const Answer(this.answer, this.questionUpdateFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      // ignore: deprecated_member_use
      child: RaisedButton(
        onPressed: questionUpdateFunction,
        child: Text(
          answer,
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
        color: Colors.blue,
      ),
    );
  }
}
