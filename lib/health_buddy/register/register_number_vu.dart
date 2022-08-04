import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../utils/chi_router.dart';
import '../utils/constants.dart';
import '../utils/widgets.dart';
import 'register verification/register_verification_code_vu.dart';
import 'register_number_vm.dart';

class RegisterNumberVU extends ViewModelBuilderWidget<RegisterNumberVM> {
  const RegisterNumberVU({super.key});

  @override
  Widget builder(
      BuildContext context, RegisterNumberVM viewModel, Widget? child) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create Account', style: titleTextStyle),
              const SizedBox(height: 4),
              SizedBox(
                width: 250,
                child: Text(
                  'Please Enter Your Mobile Number',
                  style: subTitleTextStyle,
                ),
              ),
              const SizedBox(height: 24),
              CHITextField(
                hintText: 'xxx xxxx xxx',
                items: items,
                value: viewModel.val,
                onChanged: viewModel.onMenuChanged,
              ),
              const Spacer(),
              Row(
                // mainAxisAlignment: M,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: viewModel.value1,
                    onChanged: viewModel.onCheckBox1Changed,
                  ),
                  const Expanded(
                    child: Text(
                      'I have Read and accept the Privacy policy and agree that my personal data will be processed by you',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    value: viewModel.value2,
                    onChanged: viewModel.onCheckBox2Changed,
                  ),
                  const Expanded(
                    child: Text(
                      'I have read and accept the Terms of Service',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.center,
                child: CHIButton(
                    onTap: () {
                      CHIRouter.pushReplacement(
                          context, const RegisterVerifyCodeVU());
                    },
                    btnLabel: 'Send OTP'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  RegisterNumberVM viewModelBuilder(BuildContext context) {
    return RegisterNumberVM();
  }
}
