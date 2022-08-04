import 'package:flutter/material.dart';

import 'package:health_buddy/health_buddy/wellcome/wellcome_controler.dart';
import 'health_buddy/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CHITheme,
      home: const WellcomeController(),
    );
  }
}
