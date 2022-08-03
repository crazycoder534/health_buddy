import 'package:flutter/material.dart';
import 'package:health_buddy/health%20buddy/appbar/chi_app_bar.dart';

class AppBarTest extends StatelessWidget {
  const AppBarTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: chiAppBar("Appoiment", context, centerTile: true),
      body: const Center(child: Text('some text')),
    );
  }
}
