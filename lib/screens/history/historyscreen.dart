import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/constants.dart';

import 'package:parts_of_speech_quiz/screens//history/scoretable.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> with TickerProviderStateMixin{
  Gradient gradient = purpleGradientBT;
  Color textTab = Colors.deepPurple;
  late final TabController _controller;
  int _selectedIndex = 0;

  @override
  void initState(){
    super.initState();
    _controller = TabController(length: listTitle.length, vsync: this);
    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
        if(_selectedIndex == 0 || _selectedIndex == 9){gradient = purpleGradientBT; textTab = Colors.deepPurple;};
        if(_selectedIndex == 1 || _selectedIndex == 3){gradient = orangeGradientBT; textTab = Colors.deepOrangeAccent;};
        if(_selectedIndex == 2){gradient = redGradientCen; textTab = Colors.redAccent;};
        if(_selectedIndex == 4){gradient = lightOrangeGradientCen; textTab = Colors.orangeAccent;};
        if(_selectedIndex == 5){gradient = greenGradientCen; textTab = Colors.green;};
        if(_selectedIndex == 6){gradient = tealGradientCen; textTab = Colors.teal;};
        if(_selectedIndex == 7){gradient = blueGradientCen; textTab = Colors.lightBlue;};
        if(_selectedIndex == 8){gradient = indigoGradientCen; textTab = Colors.indigoAccent;};
      });
    });
  }

  List<Widget> listTitle = [
    buildTabTitle(title: "Practice"),
    buildTabTitle(title: "All In One"),
    buildTabTitle(title: "Nouns"),
    buildTabTitle(title: "Pronouns"),
    buildTabTitle(title: "Verbs"),
    buildTabTitle(title: "Adverbs"),
    buildTabTitle(title: "Adjectives"),
    buildTabTitle(title: "Prepositions"),
    buildTabTitle(title: "Conjunctions"),
    buildTabTitle(title: "Interjection"),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        backgroundColor: mainBgColor,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text('Score History', style: TextStyle(fontFamily: appFont, fontSize: 50 ),),
          flexibleSpace: Container(decoration: BoxDecoration(gradient: gradient)),
          bottom: TabBar(
              onTap: (index) {},
              isScrollable: true,
              labelColor: textTab,
              labelStyle: TextStyle(fontSize: 30, fontFamily: appFont),
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: mainBgColor),
              controller: _controller,
              tabs: listTitle
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            ScoreTable(category: 'Practice Mode'),
            ScoreTable(category: 'All In One'),
            ScoreTable(category: 'Noun'),
            ScoreTable(category: 'Pronoun'),
            ScoreTable(category: 'Verb'),
            ScoreTable(category: 'Adverb'),
            ScoreTable(category: 'Adjective'),
            ScoreTable(category: 'Preopsition'),
            ScoreTable(category: 'Conjunction'),
            ScoreTable(category: 'Interjection'),
          ],
        ),
      ),
    );
  }
}

Tab buildTabTitle({required String title}){
  return Tab
    (
    child: Align(
      alignment: Alignment.center,
      child: Text("$title"),
    ),
  );
}