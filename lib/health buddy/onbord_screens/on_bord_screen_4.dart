import 'package:flutter/material.dart';
import 'package:health_buddy/health%20buddy/utils/constants.dart';
import 'package:health_buddy/health%20buddy/utils/widgets.dart';

class OnBordScrFour extends StatelessWidget {
  const OnBordScrFour({super.key});

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
              Image.asset(
                'assets/images/Covid 19 vaccine.png',
                height: 421,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Lab With Instant Results",
                style: titleTextStyle,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Quick & easy laboratory tests, diagnostics with instant results",
                style: subTitleTextStyle,
              ),
              const Spacer(),
              Row(
                children: [
                  const Text("4/4"),
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const OnBordScrTwo(),
                      //   ),
                      // );
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
