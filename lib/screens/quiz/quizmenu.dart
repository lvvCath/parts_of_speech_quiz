import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:parts_of_speech_quiz/constants.dart';
import 'package:parts_of_speech_quiz/screens/quiz/practicequiz.dart';
import 'package:parts_of_speech_quiz/screens/study/studymenu.dart';

class QuizMenu extends StatelessWidget {
  const QuizMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      body: Body(),
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
        decoration: BoxDecoration(gradient: gradient1),
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
      children: <Widget>[
        Container(
          height: size.height * 0.44,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  gradient: gradient1,
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
                          color: Colors.white,
                          fontSize: 45.0,
                          letterSpacing: 3,
                          fontFamily: 'Dongle',
                          fontWeight: FontWeight.normal))),
              buildPositioned(size, context)
            ],
          ),
        ),
      ],
    );
  }

//--contains Quiz Modes Carousel
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
              buildQModeContainer(context: context, size: size, gradient: gradient2, icon: FontAwesomeIcons.lightbulb,
                  text: "Practice Mode", color: Colors.deepPurple, btntext: "Take Quiz", screen: PracticeQuiz()),
              buildQModeContainer(context: context, size: size, gradient: gradient3, icon: FontAwesomeIcons.crosshairs,
                  text: "All in One", color: Colors.deepOrange, btntext: "Take Quiz", screen: PracticeQuiz()),
              buildQModeContainer(context: context, size: size, gradient: gradient4, icon: FontAwesomeIcons.bookOpenReader,
                  text: "Review", color: Colors.green, btntext: "Study",screen: StudyMenu()),
            ],
          ),
        ));
  }

  Container buildQModeContainer({required BuildContext context, required Size size, required gradient, required IconData icon,
    required text, required color, required btntext, required StatelessWidget screen}) {
    return Container(
      margin: const EdgeInsets.only(left: 42.0, bottom: 10),
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
                  color: Colors.white,
                  fontSize: 38)),
          ElevatedButton(
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => screen));},
            child: Container(
                child: Text(btntext,
                    style: TextStyle(
                        fontSize: 30.0,
                        color: color,
                        letterSpacing: 3,
                        fontFamily: 'Dongle',
                        fontWeight: FontWeight.bold))),
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(8),
              backgroundColor:
                  MaterialStateProperty.all(Colors.white),
              shape:
                  MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              )),
              overlayColor:
                  MaterialStateProperty.all<Color>(Colors.black12),
            ),
          )
        ],
      )
    );
  }
}
