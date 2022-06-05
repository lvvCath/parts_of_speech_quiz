import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parts_of_speech_quiz/constants.dart';
import 'package:parts_of_speech_quiz/screens/history/historyscreen.dart';
import 'package:parts_of_speech_quiz/screens/homescreen.dart';
import 'package:parts_of_speech_quiz/screens/quiz/quizmenu.dart';
import 'package:parts_of_speech_quiz/screens/quiz/quizscreen.dart';
import 'package:parts_of_speech_quiz/screens/study/studymenu.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';
import 'package:parts_of_speech_quiz/screens/history/historymodel.dart';

class ScoreScreen extends StatefulWidget {
  final int score;
  final int totalQuestions;
  final String category;
  final String difficulty;

  ScoreScreen(
      {required this.score,
      required this.totalQuestions,
      required this.category,
      required this.difficulty});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  String date = DateFormat("MMM, dd, yyyy").format(DateTime.now());
  String time = DateFormat("hh:mm a").format(DateTime.now());
  List<History> list = [];
  SharedPreferences? loadpref;

  void loadSharedPreferencesAndData() async {
    loadpref = await SharedPreferences.getInstance();
    loadData();
  }

  void loadData() {
    List<String>? listString = loadpref?.getStringList(widget.category);
    // print(widget.category);
    // print(listString);
    if (listString != null) {
      list =
          listString.map((item) => History.fromMap(json.decode(item))).toList();
      setState(() {});
    }
    saveData();
  }

  void saveData() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    list.insert(
        0,
        History(
          category: widget.category,
          difficulty: widget.difficulty,
          score: "${widget.score}/${widget.totalQuestions}",
          date: date,
          time: time,
        ));
    List<String> stringList =
        list.map((item) => json.encode(item.toMap())).toList();
    // print(widget.category);
    sharedPreferences.setStringList(widget.category, stringList);
    // print(stringList);
  }

  @override
  void initState() {
    loadSharedPreferencesAndData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/bg-1.png', fit: BoxFit.fill),
          Column(children: [
            Spacer(),
            if (widget.score >= widget.totalQuestions * 0.75) ...[
              Text(
                "Passed!",
                style: TextStyle(
                    height: 1.6,
                    fontSize: 130.0,
                    fontFamily: appFont,
                    color: Colors.indigo.shade600,
                    fontWeight: FontWeight.bold),
              )
            ] else ...[
              Text(
                "Failed!",
                style: TextStyle(
                    height: 1.6,
                    fontSize: 130.0,
                    fontFamily: appFont,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              )
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${widget.score}',
                    style: TextStyle(
                        height: 0.2,
                        fontSize: 100.0,
                        fontFamily: appFont,
                        fontWeight: FontWeight.bold)),
                Text(' out of ${widget.totalQuestions}',
                    style: TextStyle(
                        height: 0.2,
                        fontSize: 50.0,
                        fontFamily: appFont,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Text('${widget.category} - ${widget.difficulty} Round',
                style: TextStyle(
                    fontSize: 45.0,
                    fontFamily: appFont,
                    fontWeight: FontWeight.bold)),
            Spacer(),
            if (widget.score >= widget.totalQuestions * 0.75) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  elevatedButton(
                      text: "Next",
                      screen: QuizMenu(),
                      context: context,
                      width: 180,
                      gradient: blueGradientCen),
                  elevatedButton(
                      text: "Scores",
                      screen: HistoryScreen(),
                      context: context,
                      width: 180,
                      gradient: blueGradientCen),
                ],
              ),
            ] else ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  elevatedButton(
                      text: "Study",
                      screen: StudyMenu(),
                      context: context,
                      width: 180,
                      gradient: blueGradientCen),
                  elevatedButton(
                      text: "Scores",
                      screen: HistoryScreen(),
                      context: context,
                      width: 180,
                      gradient: blueGradientCen)
                ],
              )
            ],
            elevatedButton(
                text: "Main Menu",
                screen: HomeScreen(),
                context: context,
                width: 380,
                gradient: blueGradientCen),
            Spacer(),
          ]),
        ],
      ),
    );
  }
}

Material elevatedButton(
    {required text,
    required screen,
    required BuildContext context,
    required double width,
    required gradient}) {
  return Material(
    color: Colors.transparent,
    shape: StadiumBorder(),
    elevation: 10,
    child: Container(
      width: width,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      margin: EdgeInsets.all(6),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screen));
        },
        child: Container(
            child: Text(text,
                style: TextStyle(
                    fontSize: 45.0,
                    letterSpacing: 3,
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
