import 'package:flutter/material.dart';
import 'package:health_buddy/health%20buddy/home/appointments/payment/payment_vm.dart';
import 'package:health_buddy/health%20buddy/utils/widgets.dart';
import 'package:stacked/stacked.dart';

class PaymentVU extends ViewModelBuilderWidget<PaymentVM> {
  const PaymentVU({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, PaymentVM viewModel, Widget? child) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            CHIAppBar(title: "Payment"),
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
