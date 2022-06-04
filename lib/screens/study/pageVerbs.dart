import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/constants.dart';
import 'package:styled_text/styled_text.dart';

class VerbsPage extends StatelessWidget {
  const VerbsPage ({Key? key}) : super(key: key);


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
                          left:  50,
                          child: Text("V E R B", style:
                          TextStyle(fontSize: 100.0,
                              fontFamily: 'Dongle',
                              fontWeight: FontWeight.bold,
                              color: Colors.orangeAccent.shade400))
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
                            height: 250,
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
                                      Text('A verb is a word that we use to refer to actions (what things do) and states of being (how things are).'
                                          ' This expresses what the person, animal, place, thing, or concept does.',
                                          style: TextStyle(fontFamily: 'Dongle',
                                            fontSize: 30, height: 0.9, letterSpacing: 1.0,),
                                          textAlign: TextAlign.justify),
                                    ]
                                )
                            )
                        ),
                        Container(
                            margin: const EdgeInsets.only(bottom: 10, top: 5),
                            height: 300,
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
                                  Text('EXAMPLE OF VERB :', style: TextStyle(fontFamily: 'Dongle',
                                    fontSize: 30,fontWeight: FontWeight.bold,
                                    height: 1.5, letterSpacing: 2.0,),
                                      textAlign: TextAlign.justify),

                                  StyledText(
                                    text: 'action words : <bold>run</bold>, <bold>swim</bold>, <bold>help</bold>, <bold>work</bold>, <bold>listen</bold>, <bold>play</bold>, '
                                        '<bold>sleep</bold>, <bold>write</bold>, <bold>read</bold>, <bold>chase</bold>, <bold>cook</bold>, <bold>catch</bold>.',
                                    style: TextStyle(fontFamily: 'Dongle',
                                      fontSize: 29,height: 0.9, letterSpacing: 1.0,),
                                    tags: {
                                      'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
                                    },
                                  ),
                                  Text('Example Sentence',
                                      style: TextStyle(fontFamily: 'Dongle',
                                        fontSize: 30,fontWeight: FontWeight.bold,
                                        height: 1.5, letterSpacing: 1.0,),
                                      textAlign: TextAlign.justify),
                                  StyledText(
                                    text:'- I <bold>work</bold> at a factory.',
                                    style: TextStyle(fontFamily: 'Dongle',
                                      fontSize: 30,height: 0.9, letterSpacing: 1.0,),
                                    tags: {
                                      'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
                                    },
                                  ),
                                  StyledText(
                                    text:'- You <bold>write</bold> neatly in your notebook.',
                                    style: TextStyle(fontFamily: 'Dongle',
                                      fontSize: 30,height: 0.9, letterSpacing: 1.0,),
                                    tags: {
                                      'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
                                    },
                                  ),
                                  StyledText(
                                    text:'- He could <bold>play</bold> football well when he was a kid.',
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