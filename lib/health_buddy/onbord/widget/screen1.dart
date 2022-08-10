import 'package:flutter/material.dart';
import 'package:health_buddy/health_buddy/onbord/widget/screen2.dart';
import 'package:health_buddy/health_buddy/utils/chi_router.dart';
import 'package:health_buddy/health_buddy/utils/constants.dart';
import 'package:health_buddy/health_buddy/utils/widgets.dart';

class OnBoardScreen1 extends StatelessWidget {
  const OnBoardScreen1({super.key});

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
                height: 370,
                child: Image.asset(
                  'assets/images/onboarding_images/image1.png',
                  fit: BoxFit.fill,
                  width: 330,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text("24/7 Round-the-Clock- Service", style: titleTextStyle),
              const SizedBox(
                height: 5,
              ),
              Text(
                "24/7 Medical services available for all chronic, acute & palliative care ",
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
                      CHIRouter.push(context, const OnBoardScreen2());
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
