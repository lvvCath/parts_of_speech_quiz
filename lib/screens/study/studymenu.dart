import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/constants.dart';
import 'package:styled_text/styled_text.dart';
import 'AppBar_examples.dart';

import '../homescreen.dart';

class StudyMenu extends StatelessWidget {
  const StudyMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HomeScreen())));
              }),
          flexibleSpace: Container(
            decoration: BoxDecoration(gradient: blueGradientCen),
          ),
        ),
        body: Column(
          children: [
            Container(
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                    gradient: blueGradientCen,
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: new Offset(-3.0, 3.0),
                          blurRadius: 2.0,
                          spreadRadius: 2.0)
                    ]),
                child: Stack(children: [
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        height: 80,
                        width: 415,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            )),
                      )),
                  Positioned(
                      top: 0,
                      bottom: 20,
                      left: 30,
                      child: Text("PART OF SPEECH",
                          style: TextStyle(
                              fontSize: 75.0,
                              fontFamily: 'Dongle',
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent.shade400)))
                ])),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              height: 340,
              width: width * 0.9,
              child: Stack(
                children: [
                  StyledText(
                    text:
                        "There are eight(8) parts of speech in the English language: <bold>noun</bold>, <bold>pronoun</bold>, <bold>verb</bold>, <bold>adjective</bold>, <bold>adverb</bold>, <bold>preposition</bold>, <bold>conjunction</bold>, and <bold>interjection</bold>. "
                        "The part of speech indicates how the word functions in meaning as well as grammatically within the sentence. An individual word can function "
                        "as more than one part of speech when used in different circumstances. Understanding parts of speech is essential for determining the correct "
                        "definition of a word when using the dictionary.",
                    style: TextStyle(
                        fontFamily: 'Dongle',
                        fontSize: 28,
                        letterSpacing: 2.0,
                        height: 1.0,
                        color: Colors.grey.shade900),
                    textAlign: TextAlign.justify,
                    tags: {
                      'bold': StyledTextTag(
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    },
                  ),
                ],
              ),
            ),
            elevatedButton(
                text: 'Continue', screen: AppBar_examples(), context: context),
          ],
        ));
  }
}
