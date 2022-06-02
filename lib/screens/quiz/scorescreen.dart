import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/constants.dart';

class ScoreScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;

  const ScoreScreen({
    required this.score,
    required this.totalQuestions
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            children: <Widget>[
              Text('Score: ${score}/ ${totalQuestions}', style: TextStyle( fontSize: 45.0, fontFamily: 'Dongle', fontWeight: FontWeight.bold )),
              Text('Score Screen', style: TextStyle( fontSize: 45.0, fontFamily: 'Dongle', fontWeight: FontWeight.bold )),
            ],
          )
      ),
    );
  }
}
