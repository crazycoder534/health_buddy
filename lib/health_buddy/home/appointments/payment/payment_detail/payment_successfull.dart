import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/widgets.dart';

Widget paymentSuccessfullCell() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 1, color: grey100),
              boxShadow: cardShadow),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/app_assets/chat.svg",
              ),
              const SizedBox(
                height: 12,
              ),
              headingText(headingTxt: "Payment Successful"),
              const SizedBox(
                height: 8,
              ),
              Text(
                'You have successfully booked',
                style: subTitleTextStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'appointment with',
                    style: subTitleTextStyle,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Dr. Shah Zaman",
                    style: bluelightStyle,
                  ),
                ],
              ),
            ],
          )),
    );
