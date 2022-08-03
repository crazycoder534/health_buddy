import 'package:flutter/material.dart';
import 'package:health_buddy/health%20buddy/utils/chi_router.dart';
import '../utils/widgets.dart';
import 'appointments/appointments_vu.dart';

class BottomSummeryCellVU extends StatelessWidget {
  const BottomSummeryCellVU({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          chiContainer(
            onPressOne: () {
              CHIRouter.push(context, const AppointmentVU());
            },
            onPressTwo: () {},
            isBigBox: true,
            context: context,
            width: 95.48,
            title: 'Appointments',
            title2: 'Check Symptoms',
            imageUrl: 'assets/images/app_assets/group2.svg',
            imageUrl2: 'assets/images/app_assets/group3.svg',
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: chiContainer(
                    title: 'My Health',
                    imageUrl: 'assets/images/app_assets/group4.svg',
                    width: 70),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: chiContainer(
                  title: 'Subscriptions',
                  imageUrl: 'assets/images/app_assets/group5.svg',
                  width: 70,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: chiContainer(
                    title: 'Messages',
                    imageUrl: 'assets/images/app_assets/messages.svg',
                    width: 70),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: chiContainer(
                    title: 'Command Center',
                    imageUrl: 'assets/images/app_assets/phone.svg',
                    width: 70),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                  child: chiContainer(
                      width: 70,
                      title: "Settings",
                      imageUrl: "assets/images/app_assets/settings.svg"))
            ],
          )
        ],
      ),
    );
  }
}
