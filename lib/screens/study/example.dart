import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/constants.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';

final tabs = [
  'Page 1',
  'Page 2',
  'Page 3',
  'Page 4',
  'Page 5',
  'Page 6',
  'Page 7',
  'Page 8',
];

class example extends StatelessWidget {
  const example({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return DefaultTabController (
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
              elevation: 0,

            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                  }
                ),


            title: Text("The 8 Parts of Speeech"),
            automaticallyImplyLeading: false,
            bottom: TabBar(
                isScrollable: true,
                labelColor: Colors.redAccent,
                unselectedLabelColor: Colors.white,
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
                FirstPage(),
                SecondPage(),
                ThirdPage(),
                FourthPage(),
                FirstPage(),
                SecondPage(),
                ThirdPage(),
                FourthPage(),
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