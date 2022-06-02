import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/constants.dart';

import 'package:parts_of_speech_quiz/screens/quiz/model/questionmodel.dart';

class OptionWidget extends StatelessWidget {
  final String optionText;
  final Color optionColor;
  final answerTap;

  const OptionWidget({
    required this.optionText,
    required this.optionColor,
    required this.answerTap
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 1),
              blurRadius: 2.0)
        ],
        borderRadius: BorderRadius.circular(20.0),
        color: optionColor,
      ),
      margin: EdgeInsets.only(bottom:15, left: 30, right: 30),
      child: InkWell(
        onTap: answerTap,
        child: Container(
          padding: EdgeInsets.only(top: 5, bottom: 5),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Center(
            child: Text("${optionText}",
                style: TextStyle(
                    fontFamily: 'Dongle',
                    color: Colors.black,
                    fontSize: 28)),
          ),
        ),
      ),
    );
  }
}