import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/widgets.dart';

enum appointmentSelection { Online, Clinic }

Future bottomSheet(context) {
  appointmentSelection selected = appointmentSelection.Online;
  Color clr1 = grey100;
  Color clr2 = grey100;
  Color clr3 = grey100;
  return showModalBottomSheet(
    context: context,
    backgroundColor: grey100,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(25),
      ),
    ),
    builder: (context) {
      return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
        return Padding(
          padding:
              const EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 0),
          child: ListView(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                      "assets/images/app_assets/lessthenarrow.svg"),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Select Mode & Type",
                    style: titleTextStyle,
                  ),
                  const Spacer(),
                  SvgPicture.asset("assets/images/app_assets/cross.svg"),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              listTiles(
                "assets/images/app_assets/camera.svg",
                "Online",
                Radio(
                  value: appointmentSelection.Online,
                  groupValue: selected,
                  onChanged: (appointmentSelection? value) {
                    setState(() {
                      selected = value!;
                    });
                  },
                ),
              ),
              listTiles(
                "assets/images/app_assets/location.svg",
                "Clinic",
                Radio(
                  value: appointmentSelection.Clinic,
                  groupValue: selected,
                  onChanged: (appointmentSelection? value) {
                    setState(() {
                      selected = value!;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Text(
                "Type",
                style: titleTextStyle,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  getContainer(
                      width: 105,
                      height: 48,
                      label: 'Regular',
                      clr: clr1,
                      onTap: () {
                        setState(() {
                          clr2 = grey100;
                          clr3 = grey100;
                          clr1 = Colors.blue;
                        });
                      }),
                  getContainer(
                      width: 105,
                      height: 48,
                      label: 'Follow up',
                      clr: clr2,
                      onTap: () {
                        setState(() {
                          clr1 = grey100;
                          clr3 = grey100;
                          clr2 = Colors.blue;
                        });
                      }),
                  getContainer(
                      width: 89,
                      height: 48,
                      label: 'Gold',
                      clr: clr3,
                      onTap: () {
                        setState(() {
                          clr1 = grey100;
                          clr2 = grey100;
                          clr3 = Colors.blue;
                        });
                      }),
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              CHIButton(
                onTap: () {},
                btnLabel: "Next",
                expanded: true,
              )
            ],
          ),
        );
      });
    },
  );
}

Widget listTiles(String image, String title, Widget radioButton) {
  return Card(
    // elevation: 0.5,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 5, top: 5, left: 8, right: 0),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: prefixStyle,
        ),
        trailing: radioButton,
      ),
    ),
  );
}

Widget getContainer(
    {required double? width,
    required double? height,
    required String? label,
    Color? clr,
    required Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
          color: clr,
          border: Border.all(color: const Color(0xffEAE9F0)),
          borderRadius: BorderRadius.circular(15)),
      height: height,
      width: width,
      child: Center(
        child: Text(
          label!,
          style: prefixStyle,
          // style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}
