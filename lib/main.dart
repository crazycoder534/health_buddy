import 'package:flutter/material.dart';
import 'package:health_buddy/health%20buddy/onbord_screens/onBord_screen_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnBordScrOne(),
    );
  }
}
