import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget chiBanner(
    {required String title,
    required String subTitle,
    required String imageUrl}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
    decoration: BoxDecoration(
      color: const Color(0xffE0F2FE),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Color(0xff1D2939),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 4),
            SizedBox(
              width: 192,
              child: Text(
                subTitle,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff667085)),
              ),
            ),
          ],
        ),
        SvgPicture.asset(
          imageUrl,
          width: 82,
          height: 82,
        )
      ],
    ),
  );
}

Widget chiContainer({
  BuildContext? context,
  bool isBigBox = false,
  required String title,
  String? title2,
  required String imageUrl,
  String? imageUrl2,
  required double width,
  void Function()? onPressOne,
  void Function()? onPressTwo,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 14),
    decoration: BoxDecoration(
        color: const Color(0xffFCFCFD),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          width: 1,
          color: const Color(0xffEAE9F0),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 25),
            color: const Color(0xff000000).withOpacity(0.09),
            blurRadius: 40,
            spreadRadius: -10,
          )
        ]),
    child: isBigBox
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.94, vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: onPressOne,
                  child: innerColumn(
                    title: title,
                    imageUrl: imageUrl,
                    width: width,
                  ),
                ),
                GestureDetector(
                  onTap: onPressTwo,
                  child: innerColumn(
                    title: title2!,
                    imageUrl: imageUrl2!,
                    width: width,
                  ),
                ),
              ],
            ),
          )
        : innerColumn(
            title: title,
            imageUrl: imageUrl,
            width: width,
          ),
  );
}

Widget innerColumn({
  required String title,
  required String imageUrl,
  required double width,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xff1D2939),
        ),
      ),
      const SizedBox(height: 8.0),
      SvgPicture.asset(
        imageUrl,
        width: width,
      ),
    ],
  );
}

Widget chiCustomRow({
  BuildContext? context,
  required String title,
  String? title2,
  required String imageUrl,
  String? imageUrl2,
  void Function()? onPress,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    decoration: BoxDecoration(
        color: const Color(0xffFCFCFD),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: const Color(0xffEAE9F0),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 25),
            color: const Color(0xff000000).withOpacity(0.08),
            blurRadius: 40,
            spreadRadius: -10,
          )
        ]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onPress,
          child: innerRow(
            title: title,
            imageUrl: imageUrl,
          ),
        ),
      ],
    ),
  );
}

Widget innerRow({
  required String imageUrl,
  required String title,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SvgPicture.asset(
        imageUrl,
      ),
      const SizedBox(
        width: 16.0,
      ),
      Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color(0xff1D2939),
        ),
      ),
    ],
  );
}

Widget headingText({required String headingTxt}) {
  return Text(
    headingTxt,
    style: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Color(0xff2C2646),
    ),
  );
}

Widget chiTextButton({
  required String btnTitle,
  required void Function() onTap,
}) {
  return GestureDetector(
      onTap: onTap,
      child: Text(
        btnTitle,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xff1D2939),
        ),
      ));
}
