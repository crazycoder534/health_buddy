import 'package:flutter/material.dart';

import '../header_cell_vu.dart';

class AppointmentHeaderCellVU extends StatelessWidget {
  const AppointmentHeaderCellVU({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24, right: 24, left: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              child: actionButtonContainer(const Color(0xffE0F2FE),
                  imageUrl: 'assets/images/app assets/arrow.svg',
                  width: 10,
                  height: 10),
              onTap: () => Navigator.pop(context)),
          const Text(
            "Appointments",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xff1F222A)),
          ),
          GestureDetector(
            child: actionButtonContainer(const Color(0xffE0F2FE),
                width: 16,
                height: 16,
                imageUrl: 'assets/images/app assets/shape.svg'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
