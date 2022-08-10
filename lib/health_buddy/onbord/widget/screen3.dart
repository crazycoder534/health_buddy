import 'package:flutter/material.dart';
import 'package:health_buddy/health_buddy/onbord/widget/screen4.dart';
import 'package:health_buddy/health_buddy/utils/constants.dart';
import 'package:health_buddy/health_buddy/utils/widgets.dart';

import '../../utils/chi_router.dart';

class OnBoardScreen3 extends StatelessWidget {
  const OnBoardScreen3({super.key});

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
                  'assets/images/onboarding_images/Telemedicine.png',
                  fit: BoxFit.fill,
                  width: 330,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text("Online Teleconsultation", style: titleTextStyle),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Book video call appointment & connect with experienced doctors over the phone.",
                style: subTitleTextStyle,
              ),
              const Spacer(),
              Row(
                children: [
                  const Text("3/4"),
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
                      CHIRouter.push(context, const OnBoardScreen4());
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
