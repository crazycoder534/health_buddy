import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/widgets.dart';
import '../doctor_cell_vu.dart';
import 'all_doctors_list_vm.dart';

class AllDoctorsListVU extends ViewModelBuilderWidget<AllDoctorsListVM> {
  const AllDoctorsListVU({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, viewModel, Widget? child) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CHIAppBar(title: 'Doctors'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: CHITextField(
                hintText: 'Search doctor',
                textAlignVertical: TextAlignVertical.center,
                prefixIcon: SvgPicture.asset('assets/icons/search.svg',
                    color: grey400, fit: BoxFit.scaleDown),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: viewModel.doctors.length,
                itemBuilder: (context, index) {
                  return doctorListCellVu(
                    viewModel.doctors[index].name,
                    viewModel.doctors[index].speciality,
                    viewModel.doctors[index].location,
                    viewModel.doctors[index].fee,
                    viewModel.doctors[index].image,
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
