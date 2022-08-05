import 'package:flutter/material.dart';
import 'package:health_buddy/health_buddy/home/appointments/appointment_details/appointment_details_vu.dart';

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
      home: const AppointmentDetailsVU(),
    );
  }
}
