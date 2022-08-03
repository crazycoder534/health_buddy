import 'package:flutter/material.dart';
import 'package:health_buddy/health%20buddy/home/home_vu.dart';
import 'package:health_buddy/health%20buddy/register/register_name_vu.dart';
import 'package:health_buddy/health%20buddy/utils/chi_router.dart';
import 'package:health_buddy/health%20buddy/utils/constants.dart';
import 'package:health_buddy/health%20buddy/utils/widgets.dart';
import 'package:stacked/stacked.dart';

import 'login_vm.dart';

class LoginVU extends ViewModelBuilderWidget<LoginVM> {
  const LoginVU({super.key});

  @override
  Widget builder(BuildContext context, LoginVM viewModel, Widget? child) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome to Health Buddy', style: titleTextStyle),
              const SizedBox(height: 4),
              Text('Please Enter Your Name & Mobile Number',
                  style: subTitleTextStyle),
              const SizedBox(height: 24),
              const CHITextField(hintText: 'Full Name'),
              const SizedBox(height: 12),
              CHITextField(
                hintText: 'xxx xxxx xxx',
                items: items,
                value: viewModel.val,
                onChanged: viewModel.onMenuChanged,
              ),
              const SizedBox(
                height: 200,
              ),
              Align(
                  alignment: Alignment.center,
                  child: CHIButton(
                      onTap: () =>
                          CHIRouter.pushReplacement(context, const HomeVU()),
                      btnLabel: 'Login')),
              const SizedBox(height: 36),
              Align(
                alignment: Alignment.center,
                child: Text('Or login with',
                    style: btnTextStyle.copyWith(fontSize: 14, color: grey400)),
              ),
              const SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SocialButton(icon: 'assets/icons/gmail.svg'),
                  SizedBox(width: 16), // Icons will be changed
                  SocialButton(icon: 'assets/icons/facebook.svg'),
                ],
              ),
              const SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New to Health Buddy?',
                      style: btnTextStyle.copyWith(
                          color: grey400, fontWeight: FontWeight.w400)),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: () {
                      CHIRouter.push(context, const RegisterNameVU());
                    },
                    child: Text('Register',
                        style: btnTextStyle.copyWith(
                            color: grey800, fontWeight: FontWeight.w700)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  LoginVM viewModelBuilder(BuildContext context) {
    return LoginVM();
  }
}
