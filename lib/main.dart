import 'package:flutter/material.dart';

import 'screens/register_number/register_number_vu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RegisterNumberVU(),
    );
  }
}
