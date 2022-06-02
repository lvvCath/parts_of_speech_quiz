import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:parts_of_speech_quiz/constants.dart';
import 'package:parts_of_speech_quiz/screens/quiz/widget/appbar.dart';
import 'package:parts_of_speech_quiz/screens/quiz/widget/widget_option.dart';
import 'package:parts_of_speech_quiz/screens/quiz/model/questionmodel.dart';
import 'package:parts_of_speech_quiz/screens/quiz/scorescreen.dart';

class QuizScreen extends StatefulWidget {
  final Gradient gradient;
  final String category;
  final List<QuestionModel> question;

  QuizScreen({Key? key,
    required this.gradient,
    required this.category,
    required this.question,}) : super(key: key);
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<QuizScreen> {
  int questionIndex = 2;
  int totalScore = 0;
  bool answerWasSelected = false;
  bool endOfQuiz = false;

  void questionedAnswered(bool answerScore){
    setState(() {
      answerWasSelected = true;
    if (answerScore) {
      totalScore++;
    }
    if (questionIndex + 1 == widget.question.length){
      endOfQuiz = true;
    }
    });
  }

  void nextQuestion(){
    setState(() {
      questionIndex++;
      answerWasSelected = false;
    });
    if(questionIndex >= widget.question.length){
      questionIndex = 0;
      Navigator.push(context, MaterialPageRoute(builder: (context) => ScoreScreen(score: totalScore, totalQuestions: widget.question.length)));
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: mainBgColor,
        appBar: buildAppBar(context: context, gradient: widget.gradient, category: widget.category),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // --- QUESTION SECTION
            Container( // ---- Main top parent container
              height: size.height * 0.35,
              child: Stack(
                children: <Widget>[
                  // -- GRADIENT CONTAINER
                  Container(
                    height: size.height * 0.24,
                    decoration: BoxDecoration(
                      gradient: widget.gradient,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36),
                      ),
                    ),
                  ),

                  // -- QUESTION CONTAINER
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: size.height * 0.30,
                        decoration: BoxDecoration(color: Colors.transparent),
                        // decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4)),
                        child: Container(
                            margin: EdgeInsets.only(left: 30.0, right: 30.0),
                            width: MediaQuery.of(context).size.width * 0.50,
                            height: size.height * 0.28,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [BoxShadow(
                                  color: Colors.blueGrey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 13
                              ),],
                            ),

                            // --- TRACKER
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                    padding: EdgeInsets.only(left: 20, right: 20, top:10),
                                    decoration: BoxDecoration(color: Colors.transparent),
                                    height: size.height * 0.10,
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          // --- Question Tracker
                                          Text('Question \n${questionIndex + 1}/${widget.question.length}',
                                              style: TextStyle(
                                                  fontFamily: 'Dongle',
                                                  color: Colors.black,
                                                  height: 0.6,
                                                  fontSize: 30)),
                                          Spacer(),
                                          // --- Score Tracker
                                          Text('Score ${totalScore}/${widget.question.length}',
                                              style: TextStyle(
                                                  fontFamily: 'Dongle',
                                                  color: Colors.black,
                                                  height: 0.6,
                                                  fontSize: 30)),
                                        ]
                                    )
                                ),
                                // --- QUESTIONS
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.only(left: 20, right: 20),
                                    decoration: BoxDecoration(color: Colors.transparent),
                                    child: Center(
                                      child: Text("${widget.question[questionIndex].question}",
                                          style: TextStyle(
                                              fontFamily: 'Dongle',
                                              color: Colors.black,height: 0.6,
                                              fontSize: 32)),
                                    ),
                                  ),
                                )
                              ],
                            )
                        ),
                      )
                  ),

                  // --- TIMER
                  Positioned( // --- Timer
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: size.height * 0.13,
                      child: Center(child: Text('Time')),
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.redAccent),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 22),

            // --- OPTIONS SECTION
            Expanded(
              child: Container(
                // decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4)),
                  child: ListView(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      shrinkWrap: true,
                      children: <Widget>[
                        for (int i = 0; i < widget.question[questionIndex].answers!.length; i++)
                          OptionWidget(
                              optionText: widget.question[questionIndex].answers!.keys.toList()[i],
                              optionColor: answerWasSelected
                                  ? widget.question[questionIndex].answers!.values.toList()[i]
                                  ? correctOption : wrongOption : Colors.white,
                              answerTap: (){
                                if(answerWasSelected)
                                  return;
                                questionedAnswered(widget.question[questionIndex].answers!.values.toList()[i]);}
                          ),
                      ]
                  )
              ),
            ),

            // --- Next Question BUTTON
            Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 30, bottom: 20, top: 10),
                child: ElevatedButton(
                  onPressed: (){
                    if(!answerWasSelected){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please select an answer before going to the next question'))
                      );
                      return;}
                    nextQuestion();},
                  child: Container(
                      child: Text(endOfQuiz ? 'Submit' : 'Next Question >' ,
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                              letterSpacing: 2,
                              fontFamily: 'Dongle',
                              fontWeight: FontWeight.normal)
                      )
                  ),
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(8),
                    backgroundColor:
                    MaterialStateProperty.all(Colors.grey),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )),
                    overlayColor:
                    MaterialStateProperty.all<Color>(Colors.black12),
                  ),
                ))
          ],
        )
    );
  }
}