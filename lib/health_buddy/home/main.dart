import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/health buddy/home/main.dart

import 'appointments/confirm_appointments_vu.dart';
=======
import '../home/home_vu.dart';
>>>>>>> 7883bdfd7792ca0cf9c946a9682304b8d2cb3286:lib/health_buddy/home/main.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
<<<<<<< HEAD:lib/health buddy/home/main.dart
      // home: const OnBoardVU(),
      home: const ConfirmAppointmentVU(),
=======
      home: const HomeVU(),
>>>>>>> 7883bdfd7792ca0cf9c946a9682304b8d2cb3286:lib/health_buddy/home/main.dart
    );
  }
}
