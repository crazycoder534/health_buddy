import 'package:flutter/material.dart';

//COLORS
Color blue500 = Colors.lightBlue[500]!;
Color blue100 = Colors.lightBlue[100]!;
Color grey100 = Colors.grey[100]!;
Color grey400 = Colors.grey[400]!;
Color grey800 = Colors.grey[800]!;
Color whiteColor = Colors.white;
Color appBgColor = const Color(0xfffcfcfd);
Color cardColor = Colors.white;
Color cardBorderColor = grey100;

//TEXT STYLES
TextStyle titleTextStyle =
    TextStyle(color: grey800, fontSize: 20, fontWeight: FontWeight.w700);
TextStyle subTitleTextStyle =
    TextStyle(color: grey400, fontSize: 16, fontWeight: FontWeight.w400);
TextStyle btnTextStyle =
    TextStyle(color: whiteColor, fontSize: 14, fontWeight: FontWeight.w500);
TextStyle smallTextStyle =
    TextStyle(color: grey400, fontSize: 12, fontWeight: FontWeight.w400);
TextStyle prefixStyle =
    TextStyle(color: grey800, fontSize: 16, fontWeight: FontWeight.w400);

// BORDERS
OutlineInputBorder chiOutlineBorder =
    OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[400]!));

// Shadow
List<BoxShadow> cardShadow = [
  BoxShadow(
    offset: const Offset(0, 0),
    blurRadius: 31,
    spreadRadius: -10,
    color: Colors.black.withOpacity(0.06),
  ),
  BoxShadow(
    offset: const Offset(0, 0),
    blurRadius: 31,
    spreadRadius: -10,
    color: Colors.black.withOpacity(0.06),
  ),
];

List<String> items = ['Uk', 'US', 'PK'];

//THEME
ThemeData CHITheme = ThemeData(
  scaffoldBackgroundColor: appBgColor,
  fontFamily: 'Inter',
);
