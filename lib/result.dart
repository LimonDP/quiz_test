import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  const Result(this.totalScore);
  String get getTotalScore {
    String scoreResult = "Quiz Completed";
    if (totalScore > 90) {
      scoreResult = "Very good result";
    } else if (totalScore < 90 && totalScore > 80) {
      scoreResult = "Good Result";
    } else if (totalScore < 80 && totalScore > 65) {
      scoreResult = "well Come";
    } else {
      scoreResult = "Try next Time ,Thank you";
    }
    return scoreResult;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(getTotalScore)],
      ),
    );
  }
}
