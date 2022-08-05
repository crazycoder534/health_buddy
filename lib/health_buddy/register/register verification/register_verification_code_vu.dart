import 'package:flutter/material.dart';
import 'package:health_buddy/health_buddy/register/register%20form/register_form_vu.dart';
import 'package:stacked/stacked.dart';
import '../../utils/chi_router.dart';
import '../../utils/constants.dart';
import '../../utils/widgets.dart';
import 'register_verification_code_vm.dart';

class RegisterVerifyCodeVU
    extends ViewModelBuilderWidget<RegisterVerifyCodeVM> {
  const RegisterVerifyCodeVU({super.key});

  @override
  Widget builder(
      BuildContext context, RegisterVerifyCodeVM viewModel, Widget? child) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Enter Verification Code', style: titleTextStyle),
              const SizedBox(
                height: 4,
              ),
              Text('we\'ve send it to +92 xxx xxx xxxx',
                  style: subTitleTextStyle),
              const SizedBox(height: 200),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  OTPBox(),
                  OTPBox(),
                  OTPBox(),
                  OTPBox(),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    'Didn\'t get the code?',
                    style: mediumTextStyle,
                  ),
                  const Spacer(),
                  ResendButton(
                    onTap: () =>
                        CHIRouter.push(context, const RegisterFormVU()),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  RegisterVerifyCodeVM viewModelBuilder(BuildContext context) {
    return RegisterVerifyCodeVM();
  }
}
