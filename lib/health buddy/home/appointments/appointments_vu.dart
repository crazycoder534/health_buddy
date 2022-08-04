import 'package:flutter/material.dart';
import '../../utils/chi_router.dart';
import '../../utils/widgets.dart';
import './appointment_header_cell.dart';
import './appointments_vm.dart';
import 'package:stacked/stacked.dart';

import 'categeroies/categories_list_vu.dart';
import 'confirm_appointments_vu.dart';
import 'doctors/doctor_list_vu.dart';

class AppointmentVU extends ViewModelBuilderWidget<AppointmentsVM> {
  const AppointmentVU({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, AppointmentsVM viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: const Color(0xffFCFCFD),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppointmentHeaderCellVU(),
                headingText(headingTxt: "Appointments & Prescriptions"),
                const SizedBox(
                  height: 16,
                ),
                chiCustomRow(
                    onPress: () {
                      CHIRouter.push(context, const ConfirmAppointmentVU());
                    },
                    title: "Book Appointment",
                    imageUrl: "assets/images/app_assets/calender.svg"),
                const SizedBox(
                  height: 12,
                ),
                chiCustomRow(
                    title: "Prescriptions",
                    imageUrl: "assets/images/app_assets/appointment.svg"),
                const SizedBox(
                  height: 24,
                ),
                const CategoriesListVU(),
                const SizedBox(
                  height: 24,
                ),
                const DoctorListVU()
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
