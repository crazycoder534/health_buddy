import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

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
              Text(
                'Create Account',
                style: TextStyle(fontSize: 20, color: Colors.grey[800]),
              ),
              const SizedBox(
                height: 4,
              ),
              SizedBox(
                width: 250,
                child: Text(
                  'Please Enter Your Mobile Number',
                  style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Full Name',
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[800]!))),
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
                  Checkbox(
                    value: viewModel.value,
                    onChanged: (bool? value) {
                      viewModel.value = value!;
                      viewModel.notifyListeners();
                    },
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
              const SizedBox(
                height: 8,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: viewModel.value,
                    onChanged: (bool? value) {
                      viewModel.value = value!;
                      viewModel.notifyListeners();
                    },
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

              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightBlue[500])),
                  child: const Text('Continue'),
                ),
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
