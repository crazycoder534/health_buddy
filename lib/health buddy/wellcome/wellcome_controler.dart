import 'dart:async';
import 'package:flutter/material.dart';

import '../onbord/onbord_vu.dart';
import '../utils/chi_router.dart';
import 'wellcome_vu.dart';

class WellcomeController extends StatefulWidget {
  const WellcomeController({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _WellcomeControllerState createState() => _WellcomeControllerState();
}

class _WellcomeControllerState extends State<WellcomeController>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            Navigator.of(context).pushReplacement(
              ThisIsFadeRoute(
                route: const OnBoardVU(),
              ),
            );
            Timer(
              const Duration(seconds: 2),
              () {
                controller.reset();
              },
            );
          }
        },
      );

    Timer(const Duration(seconds: 2), () {
      setState(() {
        controller.forward();
      });
    });
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WellcomeVU(
      controller: controller,
    );
  }
}
