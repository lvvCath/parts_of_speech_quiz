import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parts_of_speech_quiz/homescreen.dart';

void main() {
  runApp(MaterialApp(
    home: SpashScreen(),
  ));
}

class SpashScreen extends StatelessWidget {
  const SpashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg-splash.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: AnimatedSplashScreen(
            duration: 3000,
            splash: 'assets/images/logo-1.png',
            splashIconSize: double.maxFinite,
            nextScreen: HomeScreen(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.transparent
        )
      ),
    );
  }
}
