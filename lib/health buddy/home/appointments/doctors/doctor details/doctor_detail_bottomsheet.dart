import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/widgets.dart';

enum appointmentSelection { Online, Clinic }

bottomSheet(context) {
  appointmentSelection selected = appointmentSelection.Online;
  return showModalBottomSheet(
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
        return Padding(
          padding:
              const EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              headerCell(context),
              const SizedBox(
                height: 16,
              ),
              listTiles(
                "assets/images/app_assets/camera.svg",
                "Online",
                Radio(
                  value: appointmentSelection.Online,
                  activeColor: blue500,
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
                  activeColor: blue500,
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
              SizedBox(
                height: 48,
                child: typesSelectioSection(),
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

Widget headerCell(BuildContext context) {
  return Row(
    children: [
      SvgPicture.asset("assets/images/app_assets/lessthenarrow.svg"),
      const SizedBox(
        width: 10,
      ),
      Text(
        "Select Mode & Type",
        style: titleTextStyle,
      ),
      const Spacer(),
      // SvgPicture.asset("assets/images/app_assets/cross.svg"),
      IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.highlight_off,
            color: Colors.red,
          )),
    ],
  );
}

Widget listTiles(String image, String title, Widget radioButton) {
  return Padding(
    padding: const EdgeInsets.only(top: 8),
    child: Container(
      // elevation: 0.5,
      decoration: BoxDecoration(
          boxShadow: cardShadow,
          color: whiteColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: grey100)),
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

Widget typesSelectioSection() {
  List<String> listViewData = [
    "Regular",
    "Follow up",
    "Gold",
  ];
  int selectedIndex = 0;
  return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
    return ListView.builder(
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
                    borderRadius: BorderRadius.circular(15)),
                width: 90,
                child: Center(
                  child: Text(
                    listViewData[index],
                    style: TextStyle(
                        color: selectedIndex == index ? whiteColor : grey800,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          );
        });
  });
}

// Widget modeSection(String imageUrl, String subtitle, int value) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
//       child: Container(
//         decoration: BoxDecoration(
//             color: whiteColor,
//             borderRadius: BorderRadius.circular(12),
//             border: Border.all(width: 1, color: grey100),
//             boxShadow: cardShadow),
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   SvgPicture.asset(imageUrl),
//                   const SizedBox(
//                     width: 8,
//                   ),
//                   Text(
//                     subtitle,
//                     // style: titleTextTwoStyle,
//                     style: prefixStyle,
//                   ),
//                   const Spacer(),
//                   Container(
//                     width: 20,
//                     height: 20,
//                     child: Radio(
//                         value: value,
//                         fillColor:
//                             MaterialStateColor.resolveWith((states) => blue500),
//                         focusColor:
//                             MaterialStateColor.resolveWith((states) => grey400),
//                         groupValue: viewModel.radioValue,
//                         onChanged: viewModel.handleValue),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
