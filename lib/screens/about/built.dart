import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/screens/about/about_large_text.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants.dart';

class BuiltWith extends StatelessWidget {
  const BuiltWith({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/bg-1.png', fit: BoxFit.fill),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                        AssetImage('assets/images/flutter-png.png'),
                  ),
                  AppLargeText(
                      text: 'FLUTTER', color: Colors.blueGrey.shade900),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppLargeText(text: 'DART', color: Colors.blueGrey.shade900),
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/images/dart-png.png'),
                  ),
                ],
              ),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
