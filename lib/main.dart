import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/screens/splashscreen.dart';
import 'package:parts_of_speech_quiz/screens/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Speech',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
