import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'homescreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
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

