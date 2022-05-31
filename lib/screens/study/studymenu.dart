import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/constants.dart';

class StudyMenu extends StatelessWidget {
  const StudyMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Text('Study Menu Screen (Edit)', style: TextStyle( fontSize: 45.0, fontFamily: 'Dongle', fontWeight: FontWeight.bold ))
      ),
    );
  }
}
