import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:parts_of_speech_quiz/constants.dart';
import 'package:parts_of_speech_quiz/screens/quiz/practicequiz.dart';
import 'package:parts_of_speech_quiz/screens/quiz/quizscreen.dart';
import 'package:parts_of_speech_quiz/screens/study/studymenu.dart';
import 'package:parts_of_speech_quiz/screens/quiz/data/question.dart';
import 'package:parts_of_speech_quiz/screens/quiz/model/questionmodel.dart';

class QuizMenu extends StatelessWidget {
  const QuizMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      body: Body(),
      backgroundColor: mainBgColor,
    );
  }
  AppBar buildAppBar({required context}) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          }),
      flexibleSpace: Container(
        decoration: BoxDecoration(gradient: blueGradientCen),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: size.height * 0.41,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  gradient: blueGradientCen,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Choose Quiz Mode',
                      style: TextStyle(
                          color: titleWhite,
                          fontSize: 45.0,
                          letterSpacing: 3,
                          height: 1,
                          fontFamily: 'Dongle',
                          fontWeight: FontWeight.bold))
              ),
              buildPositioned(size, context)
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 30),
          child: Text('Choose Quiz Topic',
              style: TextStyle(
                  color: Colors.blueGrey.shade800,
                  fontSize: 45.0,
                  letterSpacing: 3,
                  fontFamily: 'Dongle',
                  fontWeight: FontWeight.bold)
          ),
        ),
        Expanded(
          child: Container(
            // decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4)),
             child: ListView(
                 padding: const EdgeInsets.only(left: 30, right: 30),
                 shrinkWrap: true,
                 children: <Widget>[
                   buildQTopicCard(icon: FontAwesomeIcons.brain, title: 'Noun', subtitle: 'Lorem ipsum.....',
                       color: Colors.redAccent),
                   buildQTopicCard(icon: FontAwesomeIcons.handPointRight, title: 'Pronoun', subtitle: 'Lorem ipsum.....',
                       color: Colors.deepOrangeAccent),
                   buildQTopicCard(icon: FontAwesomeIcons.personWalking, title: 'Verb', subtitle: 'Lorem ipsum.....',
                       color: Colors.orangeAccent),
                   buildQTopicCard(icon: FontAwesomeIcons.bolt, title: 'Adverb', subtitle: 'Lorem ipsum.....',
                       color: Colors.green),
                   buildQTopicCard(icon: FontAwesomeIcons.faceLaughBeam, title: 'Adjective', subtitle: 'Lorem ipsum.....',
                       color: Colors.teal),
                   buildQTopicCard(icon: FontAwesomeIcons.personCircleQuestion, title: 'Preopsition', subtitle: 'Lorem ipsum.....',
                       color: Colors.lightBlue),
                     buildQTopicCard(icon: FontAwesomeIcons.handshakeAngle, title: 'Conjunction', subtitle: 'Lorem ipsum.....',
                       color: Colors.indigoAccent),
                   buildQTopicCard(icon: FontAwesomeIcons.exclamation, title: 'Interjection', subtitle: 'Lorem ipsum.....',
                       color: Colors.deepPurple),

                 ] //your list view content here
             )
          ),
        )
      ],
    );
  }

Card buildQTopicCard({required title, required subtitle, required IconData icon, required color}) {
    return Card(
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(15.0),
       ),
       color: Colors.white,
       elevation: 10,
       margin: EdgeInsets.only(bottom: 30),
       child: Column(
         children: <Widget>[
           ListTile(
             leading: Icon(icon, size: 60, color: color,),
             title: Text(title, style:TextStyle(fontFamily: 'Dongle',fontSize: 50, color: bodyTextDark)),
             subtitle: Text(subtitle, style:TextStyle(fontFamily: 'Dongle', fontSize: 30.0, height: 0.2, color: bodyTextDark)),
           ),
           SizedBox(height: 5),
           ButtonBar(
             alignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               buildElevatedButton(btntext: "easy", color:color),
               buildElevatedButton(btntext: "medium", color:color),
               buildElevatedButton(btntext: "hard", color:color),
             ],
           ),
         ],
       ),
    );
  }

//--Quiz Modes Carousel (Parent Container of buildQModeContainer())
Positioned buildPositioned(Size size, BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          height: size.height * 0.34,
          decoration: BoxDecoration(color: Colors.transparent),
          // decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4)),
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              buildQModeContainer(context: context, size: size, gradient: purpleGradientBT, icon: FontAwesomeIcons.lightbulb,
                  text: "Practice Mode", btntextcolor: Colors.deepPurple, btntext: "Take Quiz",
                  screen: QuizScreen(
                    gradient: purpleGradientCen,
                    category: 'Practice Mode',
                    question: questionAllInOne,
              )),
              buildQModeContainer(context: context, size: size, gradient: orangeGradientBT, icon: FontAwesomeIcons.crosshairs,
                  text: "All in One", btntextcolor: Colors.deepOrange, btntext: "Take Quiz",
                  screen: QuizScreen(
                    gradient: orangeGradientCen,
                    category: 'All in One',
                    question: questionAllInOne,
              )),
              buildQModeContainer(context: context, size: size, gradient: greenGradientBT, icon: FontAwesomeIcons.bookOpenReader,
                  text: "Review", btntextcolor: Colors.green, btntext: "Study",screen: StudyMenu()),
            ],
          ),
        ));
  }

//--Quiz Mode Category
Container buildQModeContainer({required BuildContext context, required Size size, required gradient, required IconData icon,
    required text, required btntextcolor, required btntext, required screen}) {
    return Container(
      margin: EdgeInsets.only(left: 30.0, bottom: 10, right: 20.0),
      width: MediaQuery.of(context).size.width * 0.50,
      height: size.height * 0.34,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
              color: Colors.blueGrey.withOpacity(0.4),
              spreadRadius: 4,
              blurRadius: 7),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 70, color: Colors.white),
          Text(text,
              style: TextStyle(
                  fontFamily: 'Dongle',
                  color: bodyTextWhite,
                  fontSize: 38)),
          buildElevatedButton(context: context, screen: screen, btntext: btntext, color:Colors.white, btntextcolor: btntextcolor, fontweight: FontWeight.bold),
        ],
      )
    );
  }
}

//--Elevated Button Reusable Method (used by all buttons in QuizMenu())
ElevatedButton buildElevatedButton({required btntext, required color, btntextcolor, fontweight, context, screen}){
  return ElevatedButton(
    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => screen));} ,
    child: Container(
        child: Text(btntext,
            style: TextStyle(
                fontSize: 30.0,
                color: btntextcolor ?? Colors.white,
                letterSpacing: 2,
                fontFamily: 'Dongle',
                fontWeight: fontweight ?? FontWeight.normal)
        )
    ),
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(8),
      backgroundColor:
      MaterialStateProperty.all(color),
      shape:
      MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          )),
      overlayColor:
      MaterialStateProperty.all<Color>(Colors.black12),
    ),
  );
}
