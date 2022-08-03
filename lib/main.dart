import 'package:flutter/material.dart';

import 'screens/register_form/register_form_vu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RegisterFormVU(),
    );
  }
}
