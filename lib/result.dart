import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resatQuiz;
  final int totalQuestion;
  const Result(this.totalScore, this.resatQuiz, this.totalQuestion);
  String get getTotalScore {
    String scoreResult = "Quiz Completed";
    if (totalScore > 90) {
      scoreResult = "Very good result $totalScore / $totalQuestion ";
    } else if (totalScore < 15 && totalScore > 10) {
      scoreResult = "Good Result $totalScore / $totalQuestion";
    } else if (totalScore < 10 && totalScore > 5) {
      scoreResult = "well Come $totalScore / $totalQuestion";
    } else {
      scoreResult = "Try next Time ,Thank you $totalScore / $totalQuestion";
    }
    return scoreResult;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(getTotalScore),
          FlatButton(
            onPressed: resatQuiz,
            color: Colors.blue.shade500,
            padding: EdgeInsets.all(10),
            child: Text("Try Again"),
          ),
          TextButton(onPressed: () {}, child: Text("Hello Text")),
          FloatingActionButton.extended(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              size: 25,
            ),
            label: Text("Add"),
          )
        ],
      ),
    );
  }
}
