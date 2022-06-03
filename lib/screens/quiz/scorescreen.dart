import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/constants.dart';

class ScoreScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;
  final String category;
  final String difficulty;

  const ScoreScreen({
    required this.score,
    required this.totalQuestions,
    required this.category,
    required this.difficulty
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            children: <Widget>[
              Text('Score Screen', style: TextStyle( fontSize: 45.0, fontFamily: appFont, fontWeight: FontWeight.bold )),
              Text('Category: ${category}', style: TextStyle( fontSize: 45.0, fontFamily: appFont, fontWeight: FontWeight.bold )),
              Text('Difficulty: ${difficulty}', style: TextStyle( fontSize: 45.0, fontFamily: appFont, fontWeight: FontWeight.bold )),
              Text('Score: ${score}/ ${totalQuestions}', style: TextStyle( fontSize: 45.0, fontFamily: appFont, fontWeight: FontWeight.bold )),
            ],
          )
      ),
    );
  }
}
