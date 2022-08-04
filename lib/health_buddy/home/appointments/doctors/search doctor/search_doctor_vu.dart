import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/widgets.dart';
import '../doctor_cell_vu.dart';
import 'search_doctor_vm.dart';

class SearchDoctorVU extends ViewModelBuilderWidget<SearchDoctorVM> {
  const SearchDoctorVU({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, SearchDoctorVM viewModel, Widget? child) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CHIAppBar(title: 'Search Doctor'),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: CHITextField(
                      prefixIcon: SvgPicture.asset('assets/icons/search.svg',
                          fit: BoxFit.scaleDown),
                      hintText: 'Select Area',
                      textAlignVertical: TextAlignVertical.center,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: CHITextField(
                      prefixIcon: SvgPicture.asset('assets/icons/doctor.svg',
                          fit: BoxFit.scaleDown),
                      hintText: 'Doctor Speciality',
                      textAlignVertical: TextAlignVertical.center,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: CHITextField(
                      prefixIcon: SvgPicture.asset('assets/icons/calender.svg',
                          fit: BoxFit.scaleDown),
                      hintText: 'Date & Time',
                      textAlignVertical: TextAlignVertical.center,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: CHIButton(
                        onTap: () {}, btnLabel: 'Search', expanded: true),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Recommendation', style: titleTextStyle),
                        Text('See All', style: subTitleTextStyle),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(top: 16),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return doctorListCellVu(
                            'Dr.Shah Zaman',
                            'Psychologiest',
                            'eClinic Lahore',
                            2000,
                            'assets/images/app_assets/appointment.svg');
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  SearchDoctorVM viewModelBuilder(BuildContext context) {
    return SearchDoctorVM();
  }
}
