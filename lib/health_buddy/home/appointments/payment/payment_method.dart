import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_buddy/health_buddy/home/appointments/payment/payment_vm.dart';

import '../../../utils/constants.dart';
import '../../../utils/widgets.dart';

class PaymentMethodCell extends StatelessWidget {
  const PaymentMethodCell({Key? key, required this.viewModel})
      : super(key: key);
  final PaymentVM viewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headingText(headingTxt: "Payment Method"),
        const SizedBox(
          height: 12,
        ),
        paymentMehod('assets/images/app_assets/heart.svg', 'Jazz Cash', 0),
        paymentMehod('assets/images/app_assets/heart.svg', 'Bank Transfer', 1),
        paymentMehod('assets/images/app_assets/heart.svg', 'EasyPaisa', 2),
      ],
    );
  }

  Widget paymentMehod(String imageUrl, String subtitle, int value) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
      child: GestureDetector(
        onTap: () {
          viewModel.handleValue(value);
        },
        child: Container(
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 1, color: grey100),
              boxShadow: cardShadow),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(imageUrl),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      subtitle,
                      style: titleTextTwoStyle,
                    ),
                    const Spacer(),
                    Container(
                      width: 20,
                      height: 20,
                      child: Radio(
                          value: value,
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => blue500),
                          focusColor: MaterialStateColor.resolveWith(
                              (states) => grey300),
                          groupValue: viewModel.radioValue,
                          onChanged: viewModel.handleValue),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
