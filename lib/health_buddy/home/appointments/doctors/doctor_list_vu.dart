import 'package:flutter/material.dart';
import '../../../utils/chi_router.dart';
import '../../../utils/widgets.dart';
import 'all doctors/all_doctors_list_vu.dart';
import 'doctor_cell_vu.dart';

class DoctorListVU extends StatelessWidget {
  const DoctorListVU({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            headingText(headingTxt: "Top Doctors"),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: chiTextButton(
                  btnTitle: "See All",
                  onTap: () {
                    CHIRouter.push(context, const AllDoctorsListVU());
                  }),
            )
          ],
        ),
        const SizedBox(
          height: 16.0,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return doctorListCellVu(
              'Dr.Shah Zaman',
              'Psychologiest',
              'eClinic Lahore',
              2000,
              'assets/images/app_assets/appointment.svg',
            );
          },
          itemCount: 5,
        ),
      ],
    );
  }
}
