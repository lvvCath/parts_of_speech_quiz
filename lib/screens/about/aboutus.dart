import 'dart:io';
import 'package:flutter/material.dart';


class AboutUS extends StatelessWidget {
  final double coverHeight = 280;
  final double profileHeight = 144;
  const AboutUS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight/2;
    return Scaffold(
      body:
        ListView()
    );
    // return Column(
    //   children: <Widget>[
    //     Stack(
    //       // alignment: Alignment.center,
    //       // children: <Widget>[
    //       //   Image(image: AssetImage('assets/images/bg-4.jpg'),
    //       //     height: coverHeight,
    //       //     width:double.infinity ,
    //       //   ),
    // //
    // // Positioned(child:
    // //           CircleAvatar(
    // //             radius: 80 ,
    // //             backgroundColor: Colors.white,
    // //             backgroundImage: AssetImage('assets/images/logo-2.png'),
    // //
    // //           )
    // //         )
    //       ]
    //     )
    //   ],
    // );
  }


  Widget buildCoverImage() => Container(
    color: Colors.grey,
    child:
    Image.asset('assets/images/bg-5.jpg'),
    height: coverHeight,
    width:double.infinity ,
  );

  Widget buildProfileImage() => CircleAvatar(
    //radius: 80,
    radius: profileHeight/2,
    backgroundColor: Colors.white,
    backgroundImage: AssetImage('assets/images/logo-2.png'),
  );

  Widget buildTop(){
    final top = coverHeight - profileHeight/2;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          buildCoverImage(),
          Positioned(
            top: top,
            child: buildProfileImage(),
          )

        ],
      ),
    );
  }

}

//
// class AboutUS extends StatefulWidget {
//   const AboutUS({Key? key}) : super(key: key);
//
//   @override
//   State<AboutUS> createState() => _AboutUSState();
// }
//
// class _AboutUSState extends State<AboutUS> {
//   final double coverHeight = 280;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           buildCoverImage(),
//           buildProfileImage(),
//         ],
//       )
//            ,
//     );
//   }
//
//   Widget buildCoverImage() => Container(
//     color: Colors.grey,
//     child: Image.file(
//         File('assets/images/bg-4.jpg'),
//       height: coverHeight,
//       width:double.infinity ,
//     )
//   );
//
//   Widget buildProfileImage() => CircleAvatar(
//     backgroundColor: Colors.white,
//     backgroundImage: AssetImage('assets/images/logo-2.png'),
//   );
//
// }



//
// class AboutUS extends StatelessWidget {
//   const AboutUS({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: Text("Edit"));
//   }
// }
