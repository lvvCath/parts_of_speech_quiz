import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/constants.dart';
import 'pageNouns.dart';
import 'pagePronouns.dart';
import 'pageVerbs.dart';
import 'pageAdverbs.dart';
import 'pagePrepositions.dart';
import 'pageConjunctions.dart';
import 'pageInterjection.dart';
import 'pageAdjectives.dart';

final tabs = [
  'Nouns',
  'Pronouns',
  'Verbs',
  'Adverbs',
  'Adjectives',
  'Prepositions',
  'Conjunctions',
  'Interjection',
];

class example extends StatelessWidget {
  const example({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return DefaultTabController (
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            primary: false,
            elevation: 0,
            flexibleSpace: Container(
              padding: EdgeInsets.symmetric(vertical: 45.0, horizontal:50.0),
              child: Text('The 8 Parts of Speeech',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  letterSpacing: 1,
                  height: 1,
                  fontFamily: 'Dongle',
                  fontWeight: FontWeight.bold
              ),

              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF38B6FF), Color(0xFF0066FF)],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                ),
              ),
            ),
            bottom: TabBar(
                isScrollable: true,
                labelColor: Colors.redAccent,
                unselectedLabelColor: Colors.black38,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Colors.white),
                tabs: [
                  for (final tab in tabs) Tab(text: tab),
                ]
            ),
          ),
          body: TabBarView(
              children:[
                NounsPage(),
                PronounsPage(),
                VerbsPage(),
                AdjectivesPage(),
                AdjectivesPage(),
                PrepositionsPage(),
                ConjunctionsPage(),
                InterjectionPage(),
              ]
          ),
        )
    );
  }
}


// class example extends StatelessWidget {
//   const example({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController (
//         length: 8,
//         child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.blueAccent,
//             elevation: 0,
//             title: Text("Parts of Speeech"),
//             bottom: TabBar(
//                 labelColor: Colors.redAccent,
//                 unselectedLabelColor: Colors.white,
//
//                 indicatorSize: TabBarIndicatorSize.label,
//                 indicator: const BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(10),
//                         topRight: Radius.circular(10)),
//                         color: Colors.white),
//                 tabs: [
//                         buildKey(title: "noun"),
//                         buildKey(title: "pro noun"),
//                         buildKey(title: "adverb"),
//                         buildKey(title: "verb"),
//                         buildKey(title: "Page1"),
//                         buildKey(title: "Page2"),
//                         buildKey(title: "Page3"),
//                         buildKey(title: "Page4"),
//
//                 ]
//             ),
//           ),
//           body: TabBarView(
//               children: <Widget>[
//                 FirstPage(),
//                 SecondPage(),
//                 ThirdPage(),
//                 FourthPage(),
//                 FirstPage(),
//                 SecondPage(),
//                 ThirdPage(),
//                 FourthPage(),
//             ]
//           ),
//         )
//     );
//   }
// }
//
// // // function Tab to make the code short
// Tab buildKey({required String title}){
//   return Tab
//     (
//     child: Align(
//       alignment: Alignment.center,
//       child: Text("$title"),
//     ),
//   );
// }