import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constants.dart';

class HeaderCellVU extends StatelessWidget {
  const HeaderCellVU({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
      child: Row(
        children: [
          Text(
            'Welcome',
            style: mediumTextStyle.copyWith(color: grey800),
          ),
          const SizedBox(width: 8),
          Text(
            'Shah Zaman',
            style: titleTextStyle,
          ),
          const Spacer(),
          GestureDetector(
            child: actionButtonContainer(
                const Color(0xffEB5757).withOpacity(0.1),
                imageUrl: 'assets/images/app_assets/sos.svg',
                width: 10,
                height: 10),
            onTap: () {},
          ),
          const SizedBox(width: 16),
          GestureDetector(
            child: actionButtonContainer(blue500.withOpacity(0.1),
                width: 16,
                height: 18,
                imageUrl: 'assets/images/app_assets/bell.svg'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}

Widget actionButtonContainer(Color? color,
    {required double width, required double height, required String imageUrl}) {
  return Container(
    width: 36,
    height: 36,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          imageUrl,
          width: width,
          height: height,
        ),
      ],
    ),
  );
}
