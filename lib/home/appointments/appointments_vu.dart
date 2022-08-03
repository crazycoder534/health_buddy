import 'package:flutter/material.dart';
import '../../health buddy/utils/widgets.dart';
import './appointment_header_cell.dart';
import './appointments_vm.dart';
import 'package:stacked/stacked.dart';

class AppointmentVU extends ViewModelBuilderWidget<AppointmentsVM> {
  const AppointmentVU({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, AppointmentsVM viewModel, Widget? child) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppointmentHeaderCellVU(),
                headingText(headingTxt: "Appointments & Prescriptions"),
                const SizedBox(
                  height: 16,
                ),
                chiCustomRow(
                    title: "Book Appointment", imageUrl: "assets/calender.svg"),
                const SizedBox(
                  height: 12,
                ),
                chiCustomRow(
                    title: "Prescriptions", imageUrl: "assets/appointment.svg"),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    headingText(headingTxt: "Categories"),
                    chiTextButton(btnTitle: "See All", onTap: () {})
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  AppointmentsVM viewModelBuilder(BuildContext context) {
    return AppointmentsVM();
  }
}
