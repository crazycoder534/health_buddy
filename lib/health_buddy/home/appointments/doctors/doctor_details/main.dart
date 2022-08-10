import 'package:flutter/material.dart';
import 'package:health_buddy/health_buddy/home/appointments/doctors/doctor_details/doctor_detail_vu.dart';
import 'package:health_buddy/health_buddy/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CHITheme,
      home: const DoctorDetailVU(),
    );
  }
}
