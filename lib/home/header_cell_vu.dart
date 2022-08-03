import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

class HeaderCellVU extends StatelessWidget {
  const HeaderCellVU({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
      child: Row(
        children: [
          const Text(
            'Welcome',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff1D2939)),
          ),
          const SizedBox(width: 8),
          const Text(
            'Shah Zaman',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xff1D2939)),
          ),
          const Spacer(),
          GestureDetector(
            child: actionButtonContainer(
                const Color(0xffEB5757).withOpacity(0.1),
                imageUrl: 'assets/sos.svg',
                width: 10,
                height: 10),
            onTap: () {},
          ),
          const SizedBox(width: 16),
          GestureDetector(
            child: actionButtonContainer(
                const Color(0xff82B1FF).withOpacity(0.1),
                width: 16,
                height: 18,
                imageUrl: 'assets/bell.svg'),
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
        SvgIcon(
          imageUrl,
          width: width,
          height: height,
        ),
      ],
    ),
  );
}
