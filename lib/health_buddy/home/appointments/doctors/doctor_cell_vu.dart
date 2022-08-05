import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants.dart';

Widget doctorListCellVu(
    String name, String speciality, String location, double fee, String image) {
  return Padding(
    padding: const EdgeInsets.only(left: 24, right: 24, bottom: 12),
    child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 1, color: grey100),
            boxShadow: cardShadow),
        child: Column(
          children: [
            firstSectionVU(name, speciality, fee, image),
            const SizedBox(
              height: 16.0,
            ),
            secondSectionVU(location)
          ],
        )),
  );
}

Widget secondSectionVU(String location) {
  return Row(
    children: [
      SvgPicture.asset(
        "assets/images/app_assets/alaram.svg",
      ),
      const SizedBox(
        width: 8.0,
      ),
      Text(location.toString(), style: smallTextStyle),
      const Spacer(),
      SvgPicture.asset(
        "assets/images/app_assets/alaram.svg",
      ),
      const SizedBox(
        width: 8.0,
      ),
      Text(
        '08:00 AM - 04:00 PM',
        style: smallTextStyle,
      ),
    ],
  );
}

Row firstSectionVU(String name, String speciality, double fee, String image) {
  return Row(
    children: [
      SvgPicture.asset(
        image,
        width: 48,
        height: 46,
      ),
      const SizedBox(
        width: 16,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name,
              style: subTitleTextStyle.copyWith(
                  color: grey800, fontWeight: FontWeight.w600)),
          const SizedBox(
            height: 6,
          ),
          Text(
            speciality,
            style: subTitleTextStyle.copyWith(fontSize: 14),
          )
        ],
      ),
      const Spacer(),
      Column(
        children: [
          RichText(
            text: TextSpan(text: 'Rs: ', style: mediumTextStyle, children: [
              TextSpan(
                text: fee.toString(),
                style: bluelightStyle,
              )
            ]),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            children: [
              SvgPicture.asset("assets/images/app_assets/star.svg"),
              const SizedBox(
                width: 6.0,
              ),
              Text('4.5 (23)', style: subTitleTextStyle.copyWith(fontSize: 14)),
            ],
          )
        ],
      )
    ],
  );
}
