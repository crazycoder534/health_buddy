import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/widgets.dart';
import '../doctor_cell_vu.dart';
import 'doctor_detail_bottomsheet.dart';
import 'doctor_detail_vm.dart';

class DoctorDetailVU extends ViewModelBuilderWidget<DoctorDetailVM> {
  const DoctorDetailVU({super.key});

  @override
  Widget builder(
      BuildContext context, DoctorDetailVM viewModel, Widget? child) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const CHIAppBar(title: 'Doctor Details'),
          doctorListCellVu('Dr.Shah Zaman', 'Psychologiest', 'eClinic lahore',
              2000, 'assets/images/app_assets/appointment.svg'),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 24, right: 24, top: 0, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                doctorReatingCell("500+", "patients",
                    "assets/images/app_assets/patients.svg"),
                doctorReatingCell("5 yr+", "Experiance",
                    "assets/images/app_assets/experiance.svg"),
                doctorReatingCell(
                    "4.8+", "Experiance", "assets/images/app_assets/star.svg"),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          aboutSection(
            titleText: "About Doctor",
            descr:
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, ",
          ),
          const SizedBox(
            height: 24,
          ),
          aboutSection(
            titleText: "Working Time",
            descr: "Mon - Sat ( 08:00 AM - 06:00 PM)",
          ),
          const Spacer(),
          detailBottomSheet(context),
        ]),
      ),
    );
  }

  @override
  DoctorDetailVM viewModelBuilder(BuildContext context) {
    return DoctorDetailVM();
  }
}

Widget doctorReatingCell(String title, String subTitle, String image) {
  return Container(
      width: 98,
      height: 98,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: grey100),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0),
              color: grey100,
              blurRadius: 31,
              spreadRadius: 10,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(image),
          const SizedBox(height: 12.0),
          Text(
            title,
            style: prefixStyle,
          ),
          Text(subTitle, style: smallTextStyle),
        ],
      ));
}

Widget aboutSection({String? titleText, String? descr}) {
  return Padding(
    padding: const EdgeInsets.only(left: 24, right: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText!,
          style: titleTextTwoStyle,
        ),
        Text(
          descr!,
          style: subTitleTextStyle,
        ),
      ],
    ),
  );
}
