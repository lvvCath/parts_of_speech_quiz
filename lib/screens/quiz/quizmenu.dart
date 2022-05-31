import 'package:flutter/material.dart';

class QuizMenu extends StatelessWidget {
  const QuizMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Text('Quiz Menu Screen (Edit)', style: TextStyle( fontSize: 45.0, fontFamily: 'Dongle', fontWeight: FontWeight.bold ))
      ),
    );
  }
}
