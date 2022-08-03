import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../utils/constants.dart';
import '../../utils/widgets.dart';
import 'register_form_vm.dart';

class RegisterFormVU extends ViewModelBuilderWidget<RegisterFormVM> {
  const RegisterFormVU({super.key});

  @override
  Widget builder(
      BuildContext context, RegisterFormVM viewModel, Widget? child) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Health Buddy', style: titleTextStyle),
                  const Spacer(),
                  const SkipButton(),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              SizedBox(
                width: 250,
                child: Text(
                  'Thank you for providing the account information',
                  style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Lets setup your account',
                style: TextStyle(fontSize: 20, color: Colors.grey[800]),
              ),
              Text(
                'Follow the simple step to finish your eclinic account creation',
                style: TextStyle(fontSize: 16, color: Colors.grey[400]),
              ),
              const SizedBox(
                height: 24,
              ),
              const FormFieldTile(),
              const FormFieldTile(),
              const FormFieldTile(),
              const FormFieldTile(),
              const FormFieldTile(),
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: CHIButton(btnLabel: 'Save', onTap: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  RegisterFormVM viewModelBuilder(BuildContext context) {
    return RegisterFormVM();
  }
}
