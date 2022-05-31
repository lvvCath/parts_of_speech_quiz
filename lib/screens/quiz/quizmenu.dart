import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/constants.dart';

class QuizMenu extends StatelessWidget {
  const QuizMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context),
      body: Body(),
    );
  }
  AppBar buildAppBar({required context}){
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: (){Navigator.pop(context);}
      ),
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
                height: size.height*0.3,
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
                        fontWeight: FontWeight.normal ))
              ),
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
      bottom: 0, left: 0, right: 0,
      child: Container(
        height: size.height * 0.34,
        decoration: BoxDecoration(color: Colors.transparent),
        // decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4)),
        child: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 42.0, bottom: 10),
              width: MediaQuery.of(context).size.width * 0.50,
              height: size.height * 0.34,
              decoration: BoxDecoration(
                gradient: gradient2,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                      color: Colors.blueGrey.withOpacity(0.4),
                      spreadRadius: 4,
                      blurRadius: 7
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                      Icons.library_books,
                      size: 70,
                      color:Colors.white
                  ),
                  Text('Practice Mode', style: TextStyle(fontFamily: 'Dongle', color: Colors.white, fontSize: 38)),
                  ElevatedButton(onPressed: (){},
                    child: Container(
                        child: Text('Take Quiz', style: TextStyle( fontSize: 30.0, color: Colors.purple, letterSpacing: 3, fontFamily: 'Dongle', fontWeight: FontWeight.bold ))
                    ),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(8),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                          )
                      ),
                        overlayColor: MaterialStateProperty.all<Color>(Colors.black12),
                    ),
                  )
                ],
              )
            ),
            Container(
              margin: const EdgeInsets.only(left: 42.0, bottom: 10),
              width: MediaQuery.of(context).size.width * 0.50,
              height: size.height * 0.34,
              decoration: BoxDecoration(
                gradient: gradient3,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                      color: Colors.blueGrey.withOpacity(0.4),
                      spreadRadius: 4,
                      blurRadius: 7
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 42.0, right: 70.0, bottom: 12),
              width: MediaQuery.of(context).size.width * 0.50,
              height: size.height * 0.34,
              decoration: BoxDecoration(
                gradient: gradient4,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey.withOpacity(0.4),
                    spreadRadius: 4,
                    blurRadius: 7
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
