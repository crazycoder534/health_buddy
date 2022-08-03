import 'package:flutter/material.dart';
import '../../../utils/widgets.dart';
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
              child: chiTextButton(btnTitle: "See All", onTap: () {}),
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
            return doctorListCellVu();
          },
          itemCount: 2,
        ),
      ],
    );
  }
}
