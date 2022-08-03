import 'package:flutter/material.dart';
import 'package:health_buddy/health%20buddy/onbord_screens/on_bord_screen_3.dart';
import 'package:health_buddy/health%20buddy/utils/constants.dart';
import 'package:health_buddy/health%20buddy/utils/widgets.dart';

class OnBordScrTwo extends StatelessWidget {
  const OnBordScrTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Skip",
                      style: TextStyle(color: blue500),
                    ),
                  ),
                ],
              ),
              Image.asset('assets/images/screen2.png', height: 410),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Advaance Urgent Care",
                style: titleTextStyle,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "A complete solution for all immediate care needs.",
                style: subTitleTextStyle,
              ),
              const Spacer(),
              Row(
                children: [
                  const Text("2/4"),
                  const Spacer(),
                  ArrowButton(
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    width: 61,
                  ),
                  ArrowButton(
                    leftAngle: false,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnBordScrThree(),
                        ),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
