import 'package:flutter/material.dart';
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
              const SizedBox(
                height: 4,
              ),
              SizedBox(
                width: 250,
                child: Text('Please Enter Your Name & Mobile Number',
                    style: subTitleTextStyle),
              ),
              const SizedBox(
                height: 24,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Full Name',
                    enabledBorder: chiOutlineBorder,
                    focusedBorder: chiOutlineBorder),
              ),
              const SizedBox(
                height: 12,
              ),
              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    hintText: 'Full Name',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[800]!))),
              ),
              const SizedBox(
                height: 200,
              ),
              Align(
                  alignment: Alignment.center,
                  child: CHIButton(onTap: () {}, btnLabel: 'Login')),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 44,
                    color: grey100,
                    child: const Icon(Icons.email),
                  ),
                  const SizedBox(width: 24),
                  Container(
                    width: 80,
                    height: 44,
                    color: grey100,
                    child: const Icon(Icons.facebook),
                  )
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New to Health Buddy?', style: subTitleTextStyle),
                  const SizedBox(
                    width: 4,
                  ),
                  Text('Register', style: titleTextStyle),
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
