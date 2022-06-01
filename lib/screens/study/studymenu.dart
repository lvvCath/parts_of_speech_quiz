import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/constants.dart';
import 'package:parts_of_speech_quiz/screens/study/example.dart';
import '../homescreen.dart';

class StudyMenu extends StatelessWidget {
  const StudyMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(

      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(70),


              ),
              color: Colors.blueAccent.shade700,
              boxShadow:[
              new BoxShadow(
              color: Colors.black.withOpacity(0.5),
                offset: new Offset(-3.0, 3.0),
                blurRadius: 2.0,
                spreadRadius: 2.0)]
            ),
              child: Stack(
                  children : [
                  Positioned(
                     top: 70, left: 0,
                      child: Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),

                        )
                      ),
                  )
                  ),
                 Positioned(
                   top: 90,
                     left: 20,
                     child: Text("PART OF SPEECH", style:
                     TextStyle(fontSize: 50.0, 
                         fontFamily: 'Dongle',
                         fontWeight: FontWeight.bold,
                         color: Colors.blueAccent.shade400))
                    )
                  ]
              )
          ),
          SizedBox(height: height*0.03,),
          Container(
            height: 330,
            width: width*0.9,
            child: Stack(
              children: [
               Text("There are eight(8) parts of speech in the English language: noun, pronoun, verb, adjective, adverb, preposition, conjunction, and interjection. "
                   "The part of speech indicates how the word functions in meaning as well as grammatically within the sentence. An individual word can function "
                   "as more than one part of speech when used in different circumstances. Understanding parts of speech is essential for determining the correct "
                   "definition of a word when using the dictionary.",
                style:
               TextStyle(fontSize: 19.0, height: 1.2, letterSpacing: 1.0,
                   color: Colors.grey.shade900),
                textAlign: TextAlign.justify)
              ],
            ),

          ),
          SizedBox(height: height*0.03,),
          elevatedButton(text: 'Study', screen: example(), context: context),
        ],
      )

    );
  }
}
