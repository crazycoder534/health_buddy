import 'package:flutter/material.dart';

//PRIMARY COLORS
Color blue25 = const Color(0xfff5fbff);
Color blue50 = const Color(0xfff0f9ff);
Color blue100 = const Color(0xffe0f2fe);
Color blue200 = const Color(0xffb9e6fe);
Color blue300 = const Color(0xff7cd4fd);
Color blue400 = const Color(0xff36bffa);
Color blue500 = const Color(0xff0ba5ec);
Color blue600 = const Color(0xff0086c9);
Color blue700 = const Color(0xff026aa2);
Color blue800 = const Color(0xff065986);
Color blue900 = const Color(0xff0b4a6f);

//GREY COLORS
Color grey25 = const Color(0xfffcfcfd);
Color grey50 = const Color(0xfff9fafb);
Color grey100 = const Color(0xfff2f4f7);
Color grey200 = const Color(0xffeaecf0);
Color grey300 = const Color(0xffd0d5dd);
Color grey400 = const Color(0xff98a2b3);
Color grey500 = const Color(0xff667085);
Color grey600 = const Color(0xff475467);
Color grey700 = const Color(0xff344054);
Color grey800 = const Color(0xff1d2939);
Color grey900 = const Color(0xff101828);

//ERROR COLORS
Color red25 = const Color(0xfffffbfa);
Color red50 = const Color(0xfffef3f2);
Color red100 = const Color(0xfffee4e2);
Color red200 = const Color(0xfffecdca);
Color red300 = const Color(0xfffda29b);
Color red400 = const Color(0xfff97066);
Color red500 = const Color(0xfff04438);
Color red600 = const Color(0xffd92d20);
Color red700 = const Color(0xffb42318);
Color red800 = const Color(0xff912018);
Color red900 = const Color(0xff7a271a);
Color whiteColor = Colors.white;
Color appBgColor = const Color(0xfffcfcfd);
Color cardColor = Colors.white;

//TEXT STYLES
TextStyle titleTextStyle =
    TextStyle(color: grey800, fontSize: 20, fontWeight: FontWeight.w700);
TextStyle titleTextTwoStyle =
    TextStyle(color: grey800, fontSize: 18, fontWeight: FontWeight.w500);
TextStyle subTitleTextStyle =
    TextStyle(color: grey400, fontSize: 16, fontWeight: FontWeight.w400);
TextStyle btnTextStyle =
    TextStyle(color: whiteColor, fontSize: 14, fontWeight: FontWeight.w500);
TextStyle mediumTextStyle =
    TextStyle(color: grey400, fontSize: 14, fontWeight: FontWeight.w400);
TextStyle smallTextStyle =
    TextStyle(color: grey400, fontSize: 12, fontWeight: FontWeight.w400);
TextStyle smallTwoTextStyle =
    TextStyle(color: grey800, fontSize: 12, fontWeight: FontWeight.w500);
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
    spreadRadius: 10,
    color: const Color(0xff000000).withOpacity(0.06),
  ),
  BoxShadow(
    offset: const Offset(0, 0),
    blurRadius: 31,
    spreadRadius: 10,
    color: const Color(0xff000000).withOpacity(0.06),
  ),
];

List<String> items = ['Uk', 'US', 'PK'];

//THEME
ThemeData CHITheme = ThemeData(
  scaffoldBackgroundColor: appBgColor,
  fontFamily: 'Inter',
);
