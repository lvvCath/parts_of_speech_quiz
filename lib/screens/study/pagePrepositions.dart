import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/constants.dart';
import 'package:styled_text/styled_text.dart';

class PrepositionsPage extends StatelessWidget {
  const PrepositionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery
        .of(context)
        .size
        .height;
    final double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

        body: Column(
          children: [
            Container(
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(0),
                      bottomLeft: Radius.circular(50),


                    ),
                    gradient: blueGradientCen,
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: new Offset(-3.0, 3.0),
                          blurRadius: 2.0,
                          spreadRadius: 2.0)
                    ]
                ),
                child: Stack(
                    children: [
                      Positioned(
                          top: 0, left: 40,
                          child: Container(
                            height: 90,
                            width: 450,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(50),

                                )
                            ),
                          )
                      ),
                      Positioned(
                          bottom: 10,
                          left: 70,
                          child: Text("PREPOSITION", style:
                          TextStyle(fontSize: 85.0,
                              fontFamily: 'Dongle',
                              fontWeight: FontWeight.bold,
                              color: Colors.purpleAccent.shade400))
                      ),

                    ]
                )
            ),
            SizedBox(height: height * 0.03,),
            Expanded(
                child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(bottom: 10, top: 10),
                            height: 350,
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 30),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(color: Colors.blueGrey
                                          .withOpacity(0.4),
                                          spreadRadius: 4,
                                          blurRadius: 7),
                                    ]),
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 15,
                                ),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: <Widget>[
                                      Text('DEFINITION :', style: TextStyle(
                                        fontFamily: 'Dongle',
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                        letterSpacing: 2.0,
                                      ),
                                          textAlign: TextAlign.justify),
                                      Text(
                                          'A preposition is a word that comes before a noun or pronoun and alters another word in the sentence.'
                                              ' As a result, a preposition appears in every prepositional sentence. Almost always, the prepositional phrase serves as an adjective or an adverb.',
                                          style: TextStyle(
                                            fontFamily: 'Dongle',
                                            fontSize: 30,
                                            height: 0.9,
                                            letterSpacing: 1.0,),
                                          textAlign: TextAlign.justify),
                                    ]
                                )
                            )
                        ),
                        Container(
                            margin: const EdgeInsets.only(bottom: 10, top: 5),
                            height: 420,
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 20),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(80),
                                    ),
                                    boxShadow: [
                                      BoxShadow(color: Colors.blueGrey
                                          .withOpacity(0.4),
                                          spreadRadius: 4,
                                          blurRadius: 7),
                                    ]),
                                padding: const EdgeInsets.only(
                                  left: 10,

                                ),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start, children: <Widget>[
                                  Text('EXAMPLE OF PREPOSITION :', style: TextStyle(
                                    fontFamily: 'Dongle',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    height: 1.5,
                                    letterSpacing: 2.0,),
                                      textAlign: TextAlign.justify),

                                  StyledText(
                                    text: 'for example : <bold> about</bold>, '
                                        '<bold>above</bold>, <bold>across,</bold>, '
                                        '<bold>after</bold>, <bold>against</bold>, '
                                        '<bold>along</bold>, <bold>among</bold>,'
                                        '<bold>around</bold>, <bold>more</bold> , etc ....',
                                    style:
                                    TextStyle(
                                      fontFamily: 'Dongle',
                                      fontSize: 29,
                                      height: 0.9,
                                      letterSpacing: 1.0,
                                    ),
                                    tags: {
                                      'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
                                    },
                                  ),
                                  Text('Example Sentence',
                                      style:
                                      TextStyle(
                                        fontFamily: 'Dongle',
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                        letterSpacing: 1.0,
                                      ),
                                      textAlign: TextAlign.justify),
                                  StyledText(text:' - The children climbed the mountain <bold>without</bold> fear.',
                                      style: TextStyle(fontFamily: 'Dongle',
                                        fontSize: 30,
                                        height: 0.9,
                                        letterSpacing: 1.0,
                                      ),
                                    tags: {
                                    'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
                                    },
                                  ),
                                  StyledText(text:' - There was rejoicing  <bold>throughout</bold> the land when the government was defeated.',
                                      style: TextStyle(fontFamily: 'Dongle',
                                        fontSize: 30,
                                        height: 1,
                                        letterSpacing: 1.0,),
                                    tags: {
                                    'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
                                    },
                                  ),
                                  StyledText(text:' -The dog is hiding <bold>under</bold> the porch because it knows it will be punished <bold>for</bold> chewing up a new pair <bold>of</bold> shoes.',
                                    style: TextStyle(fontFamily: 'Dongle',
                                        fontSize: 30,
                                        height: 0.9,
                                        letterSpacing: 1.0,),
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
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 20),
                            child: Container(
                                decoration: BoxDecoration(
                                    gradient: blueGradientCen,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(color: Colors.blueGrey
                                          .withOpacity(0.4),
                                          spreadRadius: 4,
                                          blurRadius: 7),
                                    ]),
                                padding: const EdgeInsets.only(
                                  left: 10,

                                ),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start, children: <Widget>[
                                  Text('VIDEO :', style: TextStyle(
                                      fontFamily: 'Dongle', fontSize: 30))
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