import 'package:flutter/material.dart';
import 'package:health_buddy/health%20buddy/register/register_number_vu.dart';
import 'package:health_buddy/health%20buddy/utils/chi_router.dart';
import 'package:health_buddy/health%20buddy/utils/constants.dart';
import 'package:health_buddy/health%20buddy/utils/widgets.dart';
import 'package:stacked/stacked.dart';

import 'register_name_vm.dart';

class RegisterNameVU extends ViewModelBuilderWidget<RegisterNameVM> {
  const RegisterNameVU({super.key});

  @override
  Widget builder(
      BuildContext context, RegisterNameVM viewModel, Widget? child) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create Account',
                style: titleTextStyle,
              ),
              const SizedBox(
                height: 4,
              ),
              SizedBox(
                width: 250,
                child: Text('Please Enter Your Name', style: subTitleTextStyle),
              ),
              const SizedBox(
                height: 24,
              ),
              const CHITextField(
                  hintText: 'Enter Full Name', isForPhone: false),
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: CHIButton(
                    onTap: () =>
                        CHIRouter.push(context, const RegisterNumberVU()),
                    btnLabel: 'Continue '),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  RegisterNameVM viewModelBuilder(BuildContext context) {
    return RegisterNameVM();
  }
}
