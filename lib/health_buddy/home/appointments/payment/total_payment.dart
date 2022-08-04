import 'package:flutter/material.dart';
import 'package:health_buddy/health_buddy/home/appointments/payment/payment_vm.dart';

import '../../../utils/constants.dart';

class TotalPayment extends StatelessWidget {
  const TotalPayment({Key? key, required this.viewModel}) : super(key: key);
  final PaymentVM viewModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
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
              totalPayment("Total Cost", "Rs:", "2000"),
              const SizedBox(
                height: 10,
              ),
              totalPayment("Total Discount", "Rs:", " 0.0"),
              const SizedBox(
                height: 10,
              ),
              totalPayment("Total Payment", "Rs:", " 2000"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget totalPayment(String total, String currency, String price) {
  return Row(
    children: [
      Text(
        total,
        style: mediumTextStyle,
      ),
      const Spacer(),
      Text(
        currency,
        style: prefixStyle,
      ),
      const SizedBox(
        width: 2,
      ),
      Text(
        price,
        style: prefixStyle,
      ),
    ],
  );
}
