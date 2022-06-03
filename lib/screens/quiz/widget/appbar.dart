import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/constants.dart';

AppBar buildAppBar({required context, required gradient, required category}) {
  return AppBar(
    elevation: 0,
    centerTitle: true,
    title: Text(category, style: TextStyle(fontFamily: appFont, fontSize: 50 ),),
    flexibleSpace: Container(
      decoration: BoxDecoration(gradient: gradient),
    ),
  );
}