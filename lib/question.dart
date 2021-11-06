import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  const Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        question,
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
      padding: EdgeInsets.only(top: 20, bottom: 20),
      //color: Colors.grey,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }
}
