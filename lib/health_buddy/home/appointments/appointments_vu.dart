import 'package:flutter/material.dart';
import 'package:health_buddy/health_buddy/home/appointments/categeroies/categories_page_vu.dart';
import '../../utils/chi_router.dart';
import '../../utils/widgets.dart';
import './appointments_vm.dart';
import 'package:stacked/stacked.dart';
import 'doctors/doctor_list_vu.dart';
import 'doctors/search doctor/search_doctor_vu.dart';

class AppointmentVU extends ViewModelBuilderWidget<AppointmentsVM> {
  const AppointmentVU({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, AppointmentsVM viewModel, Widget? child) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CHIAppBar(title: 'Appointments'),
            Expanded(
              child: ListView(
                children: [
                  headingText(headingTxt: "Appointments & Prescriptions"),
                  const SizedBox(
                    height: 16,
                  ),
                  chiCustomRow(
                    title: "Book Appointment",
                    imageUrl: "assets/images/app_assets/calender.svg",
                    onPress: () =>
                        CHIRouter.push(context, const SearchDoctorVU()),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  chiCustomRow(
                      title: "My Appointments",
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
                  const CategoriesPageVU(),
                  const SizedBox(
                    height: 24,
                  ),
                  const DoctorListVU()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  AppointmentsVM viewModelBuilder(BuildContext context) {
    return AppointmentsVM();
  }
}
