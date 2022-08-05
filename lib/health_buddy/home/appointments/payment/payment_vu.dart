import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_buddy/health_buddy/home/appointments/payment/payment_method.dart';
import 'package:health_buddy/health_buddy/home/appointments/payment/total_payment.dart';

import 'package:stacked/stacked.dart';

import '../../../utils/constants.dart';
import '../../../utils/widgets.dart';
import '../doctors/doctor_cell_vu.dart';
import 'payment_vm.dart';

class PaymentVU extends ViewModelBuilderWidget<PaymentVM> {
  const PaymentVU({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, PaymentVM viewModel, Widget? child) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CHIAppBar(title: 'Payment'),
            Expanded(
              child: ListView(
                children: [
                  doctorListCellVu(
                    'Dr.Shah Zaman',
                    'Psychologiest',
                    'eClinic Lahore',
                    2000,
                    'assets/images/app_assets/appointment.svg',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  headingText(headingTxt: "Promo Code"),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: CHITextField(
                      hintText: 'Enter Promo Code!',
                      textAlignVertical: TextAlignVertical.center,
                      prefixIcon: SvgPicture.asset('assets/icons/promocode.svg',
                          color: grey400, fit: BoxFit.scaleDown),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TotalPayment(
                    viewModel: viewModel,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  PaymentMethodCell(
                    viewModel: viewModel,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: CHIButton(
                        onTap: () {}, btnLabel: 'Pay Now', expanded: true),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  PaymentVM viewModelBuilder(BuildContext context) {
    return PaymentVM();
  }
}
