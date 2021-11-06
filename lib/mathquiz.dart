import 'package:flutter/material.dart';
import 'package:quiz_test/answers.dart';
import 'package:quiz_test/question.dart';

class MathQuiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final int increment;
  final Function questionFunction;
  const MathQuiz(
      {required this.questionList,
      required this.increment,
      required this.questionFunction});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Question(questionList[increment]['question'] as String),
          ...(questionList[increment]['answers'] as List)
              .map(
                (answers) => Answer(
                    answers['text'], () => questionFunction(answers['score'])),
              )
              .toList()
        ],
      ),
    );
  }
}
