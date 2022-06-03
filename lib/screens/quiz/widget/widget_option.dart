import 'package:flutter/material.dart';

class OptionWidget extends StatelessWidget {
  final String optionText;
  final Color optionColor;
  final Color borderColor;
  final answerTap;

  const OptionWidget({
    required this.optionText,
    required this.optionColor,
    required this.borderColor,
    required this.answerTap
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 1),
              blurRadius: 2.0)
        ],
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.white
      ),
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(bottom:15, left: 30, right: 30),
      child: InkWell(
        onTap: answerTap,
        child: Container(
          padding: EdgeInsets.only(right: 10, left: 10),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: borderColor, width: 2.3),
              color: optionColor
          ),
          child: Center(
            child: Text("${optionText}",
                style: TextStyle(
                    fontFamily: 'Dongle',
                    color: Colors.black,
                    fontSize: 28.5,
                    height: 1.3)),
          ),
        ),
      ),
    );
  }
}