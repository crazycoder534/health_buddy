import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

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
              Text(
                'Enter Verification Code',
                style: TextStyle(fontSize: 20, color: Colors.grey[800]),
              ),
              const SizedBox(
                height: 4,
              ),
              SizedBox(
                width: 250,
                child: Text(
                  'we\'ve send it to +92 xxx xxx xxxx',
                  style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  getTextWidget(0),
                  getTextWidget(1),
                  getTextWidget(2),
                  getTextWidget(3),
                ],
              ),
              // Container(
              //   margin: EdgeInsets.only(
              //       bottom: MediaQuery.of(context).viewInsets.bottom),
              //   height: 200,
              // ),
              const Spacer(),
              Row(
                // mainAxisAlignment: M,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    child: Text(
                      'Didn\'t get the',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffF2F4F7),
                    ),
                    height: 36,
                    width: 78,
                    child: const Center(child: Text('Resend')),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  getTextWidget(int value) {
    return Container(
      width: 48.0,
      height: 48.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.grey[300]!,
          )
          // color: const Color(0xffF2F4F7),
          ),
      child: Text(
        value.toString(),
        style: const TextStyle(
          fontSize: 30.0,
          color: Color(0xffD0D5DD),
        ),
      ),
    );
  }

  @override
  RegisterVerifyCodeVM viewModelBuilder(BuildContext context) {
    return RegisterVerifyCodeVM();
  }
}
