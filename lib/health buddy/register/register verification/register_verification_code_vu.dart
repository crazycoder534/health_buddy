import 'package:flutter/material.dart';
import 'package:health_buddy/health%20buddy/utils/chi_router.dart';
import 'package:health_buddy/health%20buddy/utils/constants.dart';
import 'package:health_buddy/health%20buddy/utils/widgets.dart';
import 'package:stacked/stacked.dart';
import '../../home/home_vu.dart';
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
              SizedBox(
                width: 250,
                child: Text('we\'ve send it to +92 xxx xxx xxxx',
                    style: subTitleTextStyle),
              ),
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
                  const Expanded(
                    child: Text(
                      'Didn\'t get the code?',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  ResendButton(
                    onTap: () => CHIRouter.push(context, const HomeVU()),
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
