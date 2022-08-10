import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/widgets.dart';

// enum appointmentSelection { Online, Clinic }

// appointmentSelection selected = appointmentSelection.Online;
int radioValue = 0;
Widget detailBottomSheet(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
    child: CHIButton(
      onTap: () {
        showModalBottomSheet(
            context: context,
            backgroundColor: grey100,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25),
              ),
            ),
            builder: (context) {
              return StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                changeValue(int? val) {
                  setState(() {
                    radioValue = val!;
                  });
                }

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    headerCell(context),
                    const SizedBox(
                      height: 16,
                    ),
                    modeSection("assets/images/app_assets/camera.svg", "Online",
                        0, changeValue),
                    modeSection("assets/images/app_assets/location.svg",
                        "Clinic", 1, changeValue),
                    const SizedBox(
                      height: 28,
                    ),
                    headingText(headingTxt: "Type"),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 48,
                      child: typesSelectioSection(),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 24, right: 24, bottom: 8),
                      child: CHIButton(
                        onTap: () {},
                        btnLabel: "Next",
                        expanded: true,
                      ),
                    )
                  ],
                );
              });
            });
      },
      btnLabel: "Book Appointment",
      expanded: true,
    ),
  );
}

Widget headerCell(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8, top: 16),
    child: Row(
      children: [
        SvgPicture.asset("assets/images/app_assets/lessthenArrow.svg"),
        const SizedBox(
          width: 10,
        ),
        headingText(headingTxt: "Select Mode & Type"),
        const Spacer(),
        // SvgPicture.asset("assets/images/app_assets/cross.svg"),
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.highlight_off,
              color: red500,
            )),
      ],
    ),
  );
}

Widget modeSection(String imageUrl, String subtitle, int value, changeValue) {
  return Padding(
    padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
    child: GestureDetector(
      // onTap: changeValue,
      onTap: () {
        changeValue(value);
      },
      child: Container(
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 1, color: grey100),
            boxShadow: cardShadow),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(imageUrl),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    subtitle,
                    style: titleTextTwoStyle,
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 30, height: 20,
                    // child: radioButton,
                    child: Radio(
                      value: value,
                      fillColor:
                          MaterialStateColor.resolveWith((states) => blue500),
                      focusColor:
                          MaterialStateColor.resolveWith((states) => grey300),
                      groupValue: radioValue,
                      onChanged: changeValue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget typesSelectioSection() {
  List<String> listViewData = [
    "Regular",
    "Follow up",
    "Gold",
  ];
  int selectedIndex = 0;
  return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listViewData.length,
          itemBuilder: (context, index) {
            onSelected(int index) {
              setState(() => selectedIndex = index);
            }

            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: GestureDetector(
                onTap: () => onSelected(index),
                child: Container(
                  decoration: BoxDecoration(
                      color: selectedIndex == index ? blue500 : whiteColor,
                      border: Border.all(color: grey100),
                      borderRadius: BorderRadius.circular(8)),
                  width: 90,
                  child: Center(
                    child: Text(
                      listViewData[index],
                      style: TextStyle(
                          color: selectedIndex == index ? whiteColor : grey800,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  });
}
