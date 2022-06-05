import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';
import 'package:parts_of_speech_quiz/screens/history/historymodel.dart';

class ScoreScreen extends StatefulWidget {
  final int score;
  final int totalQuestions;
  final String category;
  final String difficulty;

  ScoreScreen({
    required this.score,
    required this.totalQuestions,
    required this.category,
    required this.difficulty
  });

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
    if(listString != null){
      list = listString.map(
              (item) => History.fromMap(json.decode(item))
      ).toList();
      setState((){});
    }
    saveData();
  }

  void saveData() async{
    final sharedPreferences = await SharedPreferences.getInstance();
    list.insert(0,
        History(category: widget.category,
                difficulty: widget.difficulty,
                score: "${widget.score}/${widget.totalQuestions}",
                date: date,
                time: time,
        ));
    List<String> stringList = list.map(
            (item) => json.encode(item.toMap()
        )).toList();
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
      body: Container(
          child: Column(
            children: <Widget>[
              Text('Score Screen', style: TextStyle( fontSize: 45.0, fontFamily: appFont, fontWeight: FontWeight.bold )),
              Text('Category: ${widget.category}', style: TextStyle( fontSize: 45.0, fontFamily: appFont, fontWeight: FontWeight.bold )),
              Text('Difficulty: ${widget.difficulty}', style: TextStyle( fontSize: 45.0, fontFamily: appFont, fontWeight: FontWeight.bold )),
              Text('Score: ${widget.score}/ ${widget.totalQuestions}', style: TextStyle( fontSize: 45.0, fontFamily: appFont, fontWeight: FontWeight.bold )),

            ],
          )
      ),
    );
  }
}
