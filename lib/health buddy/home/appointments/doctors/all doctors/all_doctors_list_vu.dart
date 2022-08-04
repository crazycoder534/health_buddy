import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_buddy/health%20buddy/home/appointments/doctors/doctor_cell_vu.dart';
import 'package:health_buddy/health%20buddy/utils/constants.dart';
import 'package:health_buddy/health%20buddy/utils/widgets.dart';
import 'package:stacked/stacked.dart';

import 'all_doctors_list_vm.dart';

class AllDoctorsListVU extends ViewModelBuilderWidget<AllDoctorsListVM> {
  const AllDoctorsListVU({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, viewModel, Widget? child) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(24),
              child: CHIAppBar(title: 'Doctors'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: CHITextField(
                hintText: 'Search doctor',
                prefixIcon: SvgPicture.asset('assets/icons/search.svg',
                    color: grey400, fit: BoxFit.scaleDown),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      doctorListCellVu(),
                      const SizedBox(height: 8),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  AllDoctorsListVM viewModelBuilder(BuildContext context) {
    return AllDoctorsListVM();
  }
}
