import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_buddy/health%20buddy/home/appointments/doctors/doctor%20details/doctor_detail_vm.dart';
import 'package:health_buddy/health%20buddy/home/appointments/doctors/doctor_cell_vu.dart';
import 'package:health_buddy/health%20buddy/utils/constants.dart';
import 'package:health_buddy/health%20buddy/utils/widgets.dart';
import 'package:stacked/stacked.dart';

import 'doctor_detail_bottomsheet.dart';

class DoctorDetailVU extends ViewModelBuilderWidget<DoctorDetailVM> {
  const DoctorDetailVU({super.key});

  @override
  Widget builder(
      BuildContext context, DoctorDetailVM viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Doctors Detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          doctorListCellVu(),
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
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: CHIButton(
              onTap: () {
                bottomSheet(context);
              },
              btnLabel: "Book Appointment",
              expanded: true,
            ),
          )
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
      width: 100,
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
            color: const Color(0xffEAE9F0),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0),
              color: const Color(0xff000000).withOpacity(0.06),
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
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: grey800,
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.w100,
              color: grey400,
            ),
          ),
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
          style: titleTextStyle,
        ),
        Text(
          descr!,
          style: subTitleTextStyle,
        ),
      ],
    ),
  );
}
