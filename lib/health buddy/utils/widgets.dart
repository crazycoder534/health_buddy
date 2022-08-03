import 'package:flutter/material.dart';
import 'package:health_buddy/health%20buddy/utils/constants.dart';
import 'package:svg_icon/svg_icon.dart';

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
        child: SvgIcon(
          leftAngle ? 'assets/icons/back.svg' : 'assets/icons/next.svg',
          color: whiteColor,
        ),
      ),
    );
  }
}

class CHITextField extends StatelessWidget {
  final bool isForPhone;
  final List<String>? items;
  final void Function(String?)? onChanged;
  final String value;
  final String hintText;
  const CHITextField(
      {Key? key,
      this.items,
      this.onChanged,
      this.value = 'PK',
      this.isForPhone = true,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 56,
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border.all(color: grey100, width: 1),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0),
              color: Colors.black.withOpacity(0.06),
              blurRadius: 31,
              spreadRadius: -6,
            ),
            BoxShadow(
              offset: const Offset(0, 0),
              color: Colors.black.withOpacity(0.06),
              blurRadius: 31,
              spreadRadius: -6,
            ),
          ]),
      child: Row(
        children: [
          isForPhone
              ? DropdownButton(
                  underline: const SizedBox.shrink(),
                  icon: const SvgIcon('assets/icons/arrow_down.svg'),
                  iconSize: 8,
                  value: value,
                  items: items != null
                      ? items!.map((String item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList()
                      : null,
                  onChanged: onChanged,
                )
              : const SizedBox.shrink(),
          Expanded(
            child: TextField(
              style: subTitleTextStyle,
              keyboardType:
                  isForPhone ? TextInputType.phone : TextInputType.name,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(left: 8),
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
        SvgIcon(
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
      SvgIcon(
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
      SvgIcon(
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

class SkipButton extends StatelessWidget {
  final VoidCallback? onTap;
  const SkipButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
      width: 48.0,
      height: 48.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.grey[400]!,
          )),
      child: Text(
        value.toString(),
        style: const TextStyle(
          fontSize: 30.0,
          color: Color(0xffD0D5DD),
        ),
      ),
    );
  }
}

class FormFieldTile extends StatelessWidget {
  const FormFieldTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.calendar_today),
      title: Text(
        'Date of birth',
        style: subTitleTextStyle,
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
        child: const Center(child: Text('Resend')),
      ),
    );
  }
}
