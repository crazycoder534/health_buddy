import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:stacked/stacked.dart';

import '../../../../utils/chi_router.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/widgets.dart';
import 'payment_detail_vm.dart';
import 'payment_successfull.dart';
import 'total_detail_vu.dart';

class PaymentDetailVU extends ViewModelBuilderWidget<PaymentDetailVM> {
  const PaymentDetailVU({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, viewModel, Widget? child) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: Column(
            children: [
              const CHIAppBar(title: "Payment Details"),
              paymentSuccessfullCell(),
              const SizedBox(
                height: 12,
              ),
              totalDetailsCell(),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: CHIButton(
                    onTap: () {
                      CHIRouter.pushReplacement(
                          context, const PaymentDetailVU());
                    },
                    btnLabel: 'See Appointment',
                    expanded: true),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  viewModelBuilder(BuildContext context) {
    return PaymentDetailVM();
  }
}
