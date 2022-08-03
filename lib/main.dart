import 'package:flutter/material.dart';
import 'package:health_buddy/health%20buddy/splash%20and%20on%20bord/onbord_vu.dart';

import 'health buddy/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CHITheme,
      home: const OnBoardVU(),
    );
  }
}
