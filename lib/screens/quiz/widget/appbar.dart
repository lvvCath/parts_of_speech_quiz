import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar buildAppBar({required context, required gradient, required category, hint, useHint, question}) {
  return AppBar(
    elevation: 0,
    centerTitle: true,
    title: Text(category, style: TextStyle(fontFamily: appFont, fontSize: 50 ),),
    flexibleSpace: Container(
      decoration: BoxDecoration(gradient: gradient),
    ),
    actions: [
      if(useHint)
        IconButton(
          icon: Icon(FontAwesomeIcons.circleQuestion),
          onPressed: () {
            // set up the button
            Widget okButton = FlatButton(
              child: Text("close"),
              onPressed: () => Navigator.of(context).pop(),
            );
            // set up the AlertDialog
            AlertDialog alert = AlertDialog(
              title: Text("Hint"),
              content: Text(hint),
              actions: [
                okButton,
              ],
            );

            // show the dialog
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return alert;
              },
            );

          },
        ),
      // add more IconButton
    ],
  );
}