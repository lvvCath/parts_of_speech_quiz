import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar({required context, required gradient, required category}) {
  return AppBar(
    elevation: 0,
    centerTitle: true,
    leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        }),
    title: Text(category, style: TextStyle(fontFamily: 'Dongle', fontSize: 50 ),),
    flexibleSpace: Container(
      decoration: BoxDecoration(gradient: gradient),
    ),
  );
}