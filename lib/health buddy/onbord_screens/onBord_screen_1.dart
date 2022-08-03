import 'package:flutter/material.dart';
import 'package:health_buddy/health%20buddy/onbord_screens/on_bord_screen_2.dart';
import 'package:health_buddy/health%20buddy/utils/constants.dart';
import 'package:health_buddy/health%20buddy/utils/widgets.dart';

class OnBordScrOne extends StatelessWidget {
  const OnBordScrOne({super.key});

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
              Image.asset('assets/images/screen.png'),
              const SizedBox(
                height: 20,
              ),
              Text(
                "24/7 Round-the-Clock-Service",
                style: titleTextStyle,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "24/7 Medical services available for all chronic, acute & palliative care",
                style: subTitleTextStyle,
              ),
              const Spacer(),
              Row(
                children: [
                  const Text("1/4"),
                  const Spacer(),
                  ArrowButton(
                    onTap: () {},
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
                          builder: (context) => const OnBordScrTwo(),
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
