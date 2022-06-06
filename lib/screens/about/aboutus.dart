import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:parts_of_speech_quiz/screens/about/about_large_text.dart';

class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(
            text: 'Reviews',
            value: '4.0',
          ),
          buildDivider(),
          buildButton(
            text: 'Rated',
            value: '5+',
          ),
          buildDivider(),
          buildButton(
            text: 'Downloads',
            value: '500',
          ),
        ],
      );

  Widget buildDivider() => Container(
        height: 25,
        child: VerticalDivider(
          thickness: 2,
          color: Colors.grey.shade700,
        ),
      );

  Widget buildButton({
    required String text,
    required String value,
  }) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '$value',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 2),
            Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      );
}

//main class
class AboutUS extends StatelessWidget {
  final double coverHeight = 280;
  final double profileHeight = 144;

  const AboutUS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            buildTop(),
            buildContent(),
            //Image.asset('assets/images/bg-1.png', fit: BoxFit.fill),
          ],
        ));
  }

  Widget buildCoverImage() => Container(
        color: Colors.white,
        child: Image.asset('assets/images/bg-5.jpg'),
        height: coverHeight,
        width: double.infinity,
      );

  Widget buildProfileImage() => CircleAvatar(
        //radius: 80,
        radius: profileHeight / 2,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage('assets/images/logo-2.png'),
      );

  Widget buildTop() {
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        )
      ],
    );
  }

  Widget buildContent() => Column(
        children: [
          const SizedBox(height: 8),
          Text(
            'Speech',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35),
          ),
          const SizedBox(height: 8),
          Text(
            'Mobile Learning Application',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialIcon(FontAwesomeIcons.googleDrive),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.github),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.twitter),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.facebook),
              const SizedBox(width: 12),
            ],
          ),
          const SizedBox(height: 16),
          buildDivider(),
          const SizedBox(height: 16),
          NumbersWidget(),
          const SizedBox(height: 16),
          buildAbout(),
          const SizedBox(height: 32),
        ],
      );

  Widget buildSocialIcon(IconData icon) => CircleAvatar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        radius: 25,
        child: Material(
          shape: CircleBorder(),
          clipBehavior: Clip.hardEdge,
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Center(child: Icon(icon, size: 32)),
          ),
        ),
      );

  Widget buildDivider() => Container(
        height: 24,
        child: VerticalDivider(),
      );

  Widget buildAbout() => Container(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppLargeText(
              text: 'Let\'s Connect ',
              color: Colors.blueGrey.shade900,
            ),
            const SizedBox(height: 16),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              color: Colors
                  .white60, // I want to make the card transparent but putting there is still a shadow so
              elevation: 0, // I put elevation to elevate the icon and text.
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.locationDot,
                  color: Colors.redAccent,
                ),
                title: Text(
                  '938 Aurora Blvd, Cubao Quezon City , 1109 Metro Manila',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Koulen',
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              color: Colors.white60,
              elevation: 0,
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.envelope,
                  color: Colors.redAccent,
                ),
                title: const Text(
                  'speech@gmail.com',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Koulen',
                    fontSize: 17.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              color: Colors.white60,
              elevation: 0,
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.phone,
                  color: Colors.redAccent,
                ),
                title: const Text(
                  '(02) 8733 9117',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Koulen',
                    fontSize: 17.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
