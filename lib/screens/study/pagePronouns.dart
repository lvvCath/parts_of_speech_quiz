import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/constants.dart';
import 'package:styled_text/styled_text.dart';

class PronounsPage extends StatelessWidget {
  const PronounsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(

        body: Column(
          children: [
            Container(
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(0),


                    ),
                    gradient: blueGradientCen,
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
                          top: 0, left: 0,
                          child: Container(
                            height: 90,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(0),
                                  bottomRight: Radius.circular(50),

                                )
                            ),
                          )
                      ),
                      Positioned(
                          bottom: 0,
                          left: 20,
                          child: Text("PRONOUN", style:
                          TextStyle(fontSize: 100.0,
                              fontFamily: 'Dongle',
                              fontWeight: FontWeight.bold,letterSpacing: 1.0,
                              color: Colors.purpleAccent.shade400))
                      ),

                    ]
                )
            ),
            SizedBox(height: height*0.03,),
            Expanded(
                child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(bottom: 10, top: 10),
                            height: 320,
                            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(color: Colors.blueGrey.withOpacity(0.4), spreadRadius: 4, blurRadius: 7),
                                    ]),
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 15,
                                ),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('DEFINITION :', style: TextStyle(fontFamily: 'Dongle',
                                        fontSize: 30,fontWeight: FontWeight.bold,
                                        height: 1.5, letterSpacing: 2.0,),
                                          textAlign: TextAlign.justify),
                                      Text('A pronoun is defined as a word or phrase that is used as a substitution for a noun or noun phrase, which is known as the pronoun’s antecedent. '
                                          'Pronouns are short words and can do everything that nouns can do and are one of the building blocks of a sentence ',
                                          style: TextStyle(fontFamily: 'Dongle',
                                            fontSize: 30, height: 0.9, letterSpacing: 1.0,),
                                          textAlign: TextAlign.justify)
                                    ]
                                )
                            )
                        ),
                        Container(
                            margin: const EdgeInsets.only(bottom: 10, top:5),
                            height: 390,
                            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(80),
                                    ),
                                    boxShadow: [
                                      BoxShadow(color: Colors.blueGrey.withOpacity(0.4), spreadRadius: 4, blurRadius: 7),
                                    ]),
                                padding: const EdgeInsets.only(
                                  left: 10,

                                ),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                                  Text('EXAMPLE OF PRONOUN :', style: TextStyle(fontFamily: 'Dongle',
                                    fontSize: 30,fontWeight: FontWeight.bold,
                                    height: 1.5, letterSpacing: 2.0,),
                                      textAlign: TextAlign.justify),
                                  StyledText(
                                    text: 'Common pronouns are : <bold>He</bold>, <bold>She</bold>, <bold>You</bold>, <bold>me</bold>, <bold>I</bold>, <bold>we</bold>, '
                                        '<bold>us</bold>, <bold>this</bold>, <bold>them</bold>, <bold>that</bold>, <bold>they</bold>, <bold>those</bold>..',
                                    style: TextStyle(fontFamily: 'Dongle',
                                      fontSize: 30,height: 0.9, letterSpacing: 1.0,),
                                    tags: {
                                      'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
                                    },
                                  ),
                                  Text('Example Sentence',
                                      style: TextStyle(fontFamily: 'Dongle',
                                        fontSize: 31,fontWeight: FontWeight.bold,
                                        height: 1.2, letterSpacing: 1.0,),
                                      textAlign: TextAlign.justify),
                                  StyledText(
                                    text:'- <bold>We</bold> were playing poker with friends.',
                                    style: TextStyle(fontFamily: 'Dongle',
                                      fontSize: 30,height: 0.9, letterSpacing: 1.0,),
                                    tags: {
                                      'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
                                    },
                                  ),
                                  StyledText(
                                    text:'- <bold>She</bold> loves watching movies, especially if <bold>they</bold> are comedies.',
                                    style: TextStyle(fontFamily: 'Dongle',
                                      fontSize: 30,height: 0.9, letterSpacing: 1.0,),
                                    tags: {
                                      'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
                                    },
                                  ),
                                  StyledText(
                                    text:'- <bold>He</bold> was interested in ideas <bold>that</bold> were never previously recorded, '
                                        'not <bold>those</bold> that have already been published.',
                                    style: TextStyle(fontFamily: 'Dongle',
                                      fontSize: 30,height: 0.9, letterSpacing: 1.0,),
                                    tags: {
                                      'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
                                    },
                                  ),
                                ]
                                )
                            )
                        ),
                        Container(
                            margin: const EdgeInsets.only(bottom: 10, top: 5),
                            height: 350,
                            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                            child: Container(
                                decoration: BoxDecoration(
                                    gradient: blueGradientCen,
                                    borderRadius: BorderRadius.circular(15), boxShadow: [
                                  BoxShadow(color: Colors.blueGrey.withOpacity(0.4), spreadRadius: 4, blurRadius: 7),
                                ]),
                                padding: const EdgeInsets.only(
                                  left: 10,

                                ),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                                  Text('VIDEO :', style: TextStyle(fontFamily: 'Dongle', fontSize: 30))
                                ]
                                )
                            )
                        )
                      ],
                    )
                )
            )
          ],
        )
    );
  }
}

