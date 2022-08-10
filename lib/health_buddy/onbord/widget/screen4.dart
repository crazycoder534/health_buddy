import 'package:flutter/material.dart';
import 'package:health_buddy/health_buddy/login/login_vu.dart';
import 'package:health_buddy/health_buddy/utils/constants.dart';
import 'package:health_buddy/health_buddy/utils/widgets.dart';

import '../../utils/chi_router.dart';

class OnBoardScreen4 extends StatelessWidget {
  const OnBoardScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 16, bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  SkipButton(
                      // onTap: CHIRouter.push(context, const LoginVU()),
                      )
                ],
              ),
              SizedBox(
                height: 390,
                child: Image.asset(
                  'assets/images/onboarding_images/image4.png',
                  fit: BoxFit.fill,
                  width: 330,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text("Lab With Instant Results", style: titleTextStyle),
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
                      CHIRouter.pop(context);
                    },
                  ),
                  const SizedBox(
                    width: 61,
                  ),
                  ArrowButton(
                    leftAngle: false,
                    onTap: () {
                      CHIRouter.pushReplacement(context, const LoginVU());
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
