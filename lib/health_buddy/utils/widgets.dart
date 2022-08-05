import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../home/header_cell_vu.dart';
import 'constants.dart';

class CHIButton extends StatelessWidget {
  final VoidCallback onTap;
  final String btnLabel;
  final bool expanded;
  const CHIButton(
      {Key? key,
      required this.onTap,
      required this.btnLabel,
      this.expanded = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: !expanded ? MediaQuery.of(context).size.width * 0.5 : null,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        height: 48,
        decoration: BoxDecoration(
          color: blue500,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(btnLabel, style: btnTextStyle),
      ),
    );
  }
}

class ArrowButton extends StatelessWidget {
  final bool leftAngle;
  final VoidCallback onTap;
  const ArrowButton({Key? key, this.leftAngle = true, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: blue500,
          borderRadius: BorderRadius.circular(4),
        ),
        child: SvgPicture.asset(
          leftAngle ? 'assets/icons/back.svg' : 'assets/icons/next.svg',
          color: whiteColor,
        ),
      ),
    );
  }
}

class CHITextField extends StatelessWidget {
  final List<String>? items;
  final Widget? prefixIcon;
  final void Function(String?)? onChanged;
  final String value;
  final String hintText;
  final TextInputType? keyboardType;
  final TextAlignVertical? textAlignVertical;
  const CHITextField(
      {Key? key,
      this.items,
      this.onChanged,
      this.value = 'PK',
      required this.hintText,
      this.prefixIcon,
      this.textAlignVertical,
      this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(12),
      height: 56,
      decoration: BoxDecoration(
        color: whiteColor,
        border: cardBorder,
        borderRadius: BorderRadius.circular(8),
        boxShadow: cardShadow,
      ),
      child: Row(
        children: [
          items != null
              ? DropdownButton(
                  alignment: Alignment.bottomCenter,
                  underline: const SizedBox.shrink(),
                  icon: Row(
                    children: [
                      const SizedBox(width: 12),
                      SvgPicture.asset('assets/icons/arrow_down.svg'),
                      const SizedBox(width: 12),
                    ],
                  ),
                  iconSize: 8,
                  value: value,
                  items: items!.map((String item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: onChanged,
                )
              : const SizedBox.shrink(),
          Expanded(
            child: TextField(
              textAlignVertical: textAlignVertical,
              style: subTitleTextStyle.copyWith(color: grey800),
              keyboardType: keyboardType,
              decoration: InputDecoration(
                prefixIcon: prefixIcon,
                border: InputBorder.none,
                // contentPadding: const EdgeInsets.symmetric(vertical: 14),
                hintText: hintText,
                hintStyle: subTitleTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget chiBanner(
    {required String title,
    required String subTitle,
    required String imageUrl}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
    decoration: BoxDecoration(
      color: blue100,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: titleTextStyle),
            const SizedBox(height: 4),
            SizedBox(
              width: 192,
              child: Text(
                subTitle,
                style: subTitleTextStyle.copyWith(fontSize: 14, color: grey500),
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
        color: cardColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: grey100,
        ),
        boxShadow: cardShadow),
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
      Text(title, style: subTitleTextStyle.copyWith(color: grey800)),
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
  return Padding(
    padding: const EdgeInsets.only(left: 24, right: 24),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: grey100),
          boxShadow: cardShadow),
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
      Text(title, style: prefixStyle),
    ],
  );
}

Widget headingText({required String headingTxt}) {
  return Padding(
    padding: const EdgeInsets.only(right: 24, left: 24),
    child: Text(headingTxt, style: titleTextTwoStyle),
  );
}

Widget chiTextButton({
  required String btnTitle,
  required void Function() onTap,
}) {
  return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 46,
        height: 20,
        child: Text(
          btnTitle,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff1D2939),
          ),
        ),
      ));
}

class SkipButton extends StatelessWidget {
  final VoidCallback? onTap;
  const SkipButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        'Skip',
        style: TextStyle(fontSize: 14, color: Colors.lightBlue[500]),
      ),
    );
  }
}

class OTPBox extends StatelessWidget {
  final int value;
  const OTPBox({Key? key, this.value = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64.0,
      height: 64.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.grey[400]!,
          )),
      child: Text(
        value.toString(),
        style: subTitleTextStyle.copyWith(
            fontSize: 48, fontWeight: FontWeight.w500, letterSpacing: -2),
      ),
    );
  }
}

class ResendButton extends StatelessWidget {
  final VoidCallback? onTap;
  const ResendButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: grey100,
        ),
        height: 36,
        width: 78,
        child: Center(
            child:
                Text('Resend', style: btnTextStyle.copyWith(color: grey800))),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String icon;
  const SocialButton({Key? key, this.onTap, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80,
        height: 44,
        color: grey100,
        child: SvgPicture.asset(icon, fit: BoxFit.scaleDown),
      ),
    );
  }
}

class CHIAppBar extends StatelessWidget {
  final VoidCallback? onHomeTap;
  final String title;
  const CHIAppBar({Key? key, this.onHomeTap, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              child: actionButtonContainer(blue100,
                  imageUrl: 'assets/images/app_assets/arrow.svg',
                  width: 10,
                  height: 10),
              onTap: () => Navigator.pop(context)),
          Text(
            title,
            style: titleTextStyle,
          ),
          GestureDetector(
            onTap: onHomeTap,
            child: actionButtonContainer(blue100,
                width: 16,
                height: 16,
                imageUrl: 'assets/images/app_assets/shape.svg'),
          ),
        ],
      ),
    );
  }
}

class AppointmentCard extends StatelessWidget {
  final String image;
  final String name;
  final String speciality;
  final String location;
  final String date;
  final String time;
  final String status;
  final VoidCallback? onCompleted;
  final VoidCallback? onBookAgain;
  const AppointmentCard(
      {Key? key,
      required this.image,
      required this.name,
      required this.speciality,
      required this.location,
      required this.date,
      required this.time,
      required this.status,
      this.onCompleted,
      this.onBookAgain})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      // height: 240,
      decoration: BoxDecoration(
        color: cardColor,
        boxShadow: cardShadow,
        border: cardBorder,
        borderRadius: cardRadius,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: grey200,
                  border: Border.all(color: grey100, width: 3),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(image),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: titleTextStyle),
                  Text(speciality, style: subTitleTextStyle),
                  Text(location, style: subTitleTextStyle),
                ],
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SvgPicture.asset('assets/icons/calender.svg', color: blue500),
                  const SizedBox(height: 12),
                  Text(date, style: subTitleTextStyle),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset('assets/icons/time.svg'),
                  const SizedBox(height: 12),
                  Text(time, style: subTitleTextStyle),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset('assets/icons/global.svg'),
                  const SizedBox(height: 12),
                  Text(status, style: subTitleTextStyle),
                ],
              )
            ],
          ),
          const SizedBox(height: 8),
          Divider(color: grey200, thickness: 1),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: onCompleted,
                  child: Text('Completed', style: subTitleTextStyle)),
              GestureDetector(
                  onTap: onBookAgain,
                  child: Text('Book Again', style: subTitleTextStyle)),
            ],
          )
        ],
      ),
    );
  }
}
