import 'package:flutter/material.dart';

// Fonts
const appFont = 'Dongle';

// Solid Colors
const mainBgColor = Color(0xffECE6EF);
const titleWhite = Color(0xffffffff);
const titleDark = Color(0xff003C6D);
const bodyTextWhite = Color(0xffffffff);
const bodyTextDark = Color(0xff003C6D);

const mainBtnColor = Color(0xFF5d69b3);

const correctOption = Color(0xff5fee75);
const wrongOption = Color(0xffffa8a8);

// Gradient Colors
const blueGradientCen = LinearGradient(
  colors: [Color(0xFF38B6FF), Color(0xFF0066FF)],
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
);

const purpleGradientBT = LinearGradient(
  colors: [Color(0xFFDEA0FF), Color(0xFF7230FF)],
  begin: Alignment.bottomRight,
  end: Alignment.topLeft,
);
const purpleGradientCen = LinearGradient(
  colors: [Color(0xFFDEA0FF), Color(0xFF7230FF)],
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
);

const orangeGradientBT = LinearGradient(
  colors: [Color(0xFFFFA4D8), Color(0xFFFF7F31)],
  begin: Alignment.bottomRight,
  end: Alignment.topLeft,
);
const orangeGradientCen = LinearGradient(
  colors: [Color(0xFFFFA4D8), Color(0xFFFF7F31)],
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
);

const greenGradientBT = LinearGradient(
  colors: [Color(0xFF62DC66), Color(0xFF00AD19)],
  begin: Alignment.bottomRight,
  end: Alignment.topLeft,
);
const greenGradientCen = LinearGradient(
  colors: [Color(0xFF62DC66), Color(0xFF00AD19)],
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
);

const redGradientCen = LinearGradient(
  colors: [Color(0xFFFF5252), Color(0xFFC72020)],
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
);

const lightOrangeGradientCen = LinearGradient(
  colors: [Color(0xFFFFAB40), Color(0xFFFF6E40)],
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
);

const tealGradientCen = LinearGradient(
  colors: [Color(0xFF20AD97), Color(0xFF009688)],
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
);

const indigoGradientCen = LinearGradient(
  colors: [Color(0xFF7188FF), Color(0xFF536DFE)],
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
);

// Button Styles
// used by buttons in quiz menu and quiz screen
ButtonStyle buttonStyle(color) {
  return ButtonStyle(
    elevation: MaterialStateProperty.all(8),
    backgroundColor: MaterialStateProperty.all(color),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        )),
    overlayColor: MaterialStateProperty.all<Color>(Colors.black12),
  );
}