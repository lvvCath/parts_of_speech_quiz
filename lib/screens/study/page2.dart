import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Text('Page2 (Edit)', style: TextStyle( fontSize: 45.0, fontFamily: 'Dongle', fontWeight: FontWeight.bold ))
      ),
    );
  }
}