import 'package:flutter/material.dart';
import 'package:health_buddy/health_buddy/home/appointments/appointment_details/appointment_details_vm.dart';
import 'package:health_buddy/health_buddy/utils/widgets.dart';
import 'package:stacked/stacked.dart';

class AppointmentDetailsVU
    extends ViewModelBuilderWidget<AppointmentDetailsVM> {
  const AppointmentDetailsVU({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, AppointmentDetailsVM viewModel, Widget? child) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            CHIAppBar(title: 'Appointment Details'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: AppointmentCard(
                name: 'Dr.Shah Zaman',
                speciality: 'Medical Specialist',
                location: 'DMG Clinic',
                date: '12/5/22',
                time: '04:00',
                status: 'Online',
                image: 'assets/images/app_assets/account.svg',
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  AppointmentDetailsVM viewModelBuilder(BuildContext context) {
    return AppointmentDetailsVM();
  }
}
