import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/constants.dart';
import 'package:parts_of_speech_quiz/screens/about/about_app_text.dart';
import 'package:parts_of_speech_quiz/screens/about/about_large_text.dart';
import 'package:parts_of_speech_quiz/screens/about/aboutus.dart';
import 'package:parts_of_speech_quiz/screens/about/built.dart';

// class AboutScreen extends StatelessWidget {
//   const AboutScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final double height = MediaQuery.of(context).size.height;
//     final double width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Container(
//           child: Text('About Screen (Edit)',
//               style: TextStyle(
//                   fontSize: 45.0,
//                   fontFamily: 'Dongle',
//                   fontWeight: FontWeight.bold))),
//     );
//   }
// }

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  List images = [
    "aboutus-1.png",
    "aboutus-2.png",
  ];
  List headtexts = [
    "ABOUT US",
    "BUILT WITH",
  ];
  List bodytexts = [
    "Our team is motivated to help you in mastering the English language. This software is helpful for increasing vocabulary and improving reading comprehension.",
    "This application is built with FLUTTER and DART programming language."
  ];
  List button = ["Contact Us!", "Frameworks"];
  List screens = [
    AboutUS(),
    BuiltWith(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/" + images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 78, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(
                          text: headtexts[index],
                          color: Colors.blueGrey.shade900,
                        ),
                        SizedBox(height: 0.1),
                        Container(
                          width: 265,
                          child: AppText(
                              text: bodytexts[index],
                              color: Colors.blueGrey.shade800),
                        ),
                        SizedBox(height: 40),
                        elevatedButton(
                            text: button[index],
                            screen: screens[index],
                            context: context)
                        // GestureDetector(
                        //   onTap: () {},
                        //   child: Container(
                        //     child: ResponsiveButton(
                        //       width: 120,
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Column(
                        children: List.generate(2, (indexDots) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 2),
                            width: 8,
                            height: index == indexDots ? 25 : 8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: index == indexDots
                                    ? mainBtnColor
                                    : mainBtnColor.withOpacity(0.3)),
                          );
                        }),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

Material elevatedButton(
    {required text,
    required StatelessWidget screen,
    required BuildContext context}) {
  return Material(
    color: Colors.transparent,
    shape: StadiumBorder(),
    elevation: 10,
    child: Container(
      decoration: BoxDecoration(
          color: mainBtnColor,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      margin: EdgeInsets.all(6),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screen));
        },
        child: Container(
            child: Text(text,
                style: TextStyle(
                    fontSize: 45.0,
                    letterSpacing: 3,
                    fontFamily: 'Dongle',
                    fontWeight: FontWeight.bold))),
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          onSurface: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          //make color or elevated button transparent
        ),
      ),
    ),
  );
}
