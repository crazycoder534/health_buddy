import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants.dart';

Widget totalDetailsCell() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 1, color: grey100),
              boxShadow: cardShadow),
          child: Column(
            children: [
              totalDetailVU("assets/icons/person.svg", 'Dr. Shah Zaman',
                  "assets/icons/time.svg", "12:30 PM"),
              const SizedBox(
                height: 22,
              ),
              totalDetailVU("assets/icons/map.svg", 'Dr. Shah Zaman',
                  "assets/icons/datetime.svg", "12:30 PM"),
              const SizedBox(
                height: 24,
              ),
              totalDetailVU("assets/icons/price.svg", 'Dr. Shah Zaman',
                  "assets/icons/clinic.svg", "12:30 PM"),
            ],
          )),
    );

Widget totalDetailVU(
        String imgUrl, String doctorName, String imageUrlTwo, String time) =>
    Row(
      children: [
        SvgPicture.asset(
          imgUrl,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(doctorName, style: prefixStyle),
        const Spacer(),
        SvgPicture.asset(imageUrlTwo),
        const SizedBox(
          width: 10,
        ),
        Text(time, style: prefixStyle),
      ],
    );
