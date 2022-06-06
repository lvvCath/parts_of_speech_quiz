import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/screens/study/studymenu.dart';
import 'package:parts_of_speech_quiz/screens/quiz/quizmenu.dart';
import 'package:parts_of_speech_quiz/screens/about/aboutscreen.dart';
import 'package:parts_of_speech_quiz/constants.dart';
import 'package:parts_of_speech_quiz/screens/history/historyscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool willLeave = false;
        // show the confirm dialog
        await showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text('Are you sure you want to Exit the application?'),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    willLeave = true;
                    Navigator.of(context).pop();
                  },
                  child: const Text('Yes'),
                  style: buttonStyle(Colors.blueAccent),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('No'),
                  style: buttonStyle(Colors.grey),
                )
              ],
            ));
        return willLeave;
      },
      child: Scaffold(
        body: Stack(children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/bg-1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo-1.png'),
              Container(
                padding: const EdgeInsets.only(top: 20, left: 75, right: 75),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 15),
                      elevatedButton(
                          text: 'Study', screen: StudyMenu(), context: context),
                      SizedBox(height: 15),
                      elevatedButton(
                          text: 'Quiz', screen: QuizMenu(), context: context),
                      SizedBox(height: 15),
                      elevatedButton(
                          text: 'Score History', screen: HistoryScreen(), context: context),
                      SizedBox(height: 15),
                      elevatedButton(
                          text: 'About Us', screen: AboutScreen(), context: context),
                    ]),
              )
            ],
          ))
        ]),
      ),
    );
  }
}

Material elevatedButton({required text, required  screen, required BuildContext context}) {
  return Material(
    color: Colors.transparent,
    shape: StadiumBorder(),
    elevation: 10,
    child: Container(
      decoration: BoxDecoration(
          gradient: blueGradientCen,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      margin: EdgeInsets.all(6),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screen));
        },
        child: Container(
            child: Text(text,
                style: TextStyle(
                    fontSize: 43.0,
                    letterSpacing: 2,
                    fontFamily: appFont,
                    fontWeight: FontWeight.bold))),
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          onSurface: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          //make color or elevated button transparent
        ),
      ),
    ),
  );
}