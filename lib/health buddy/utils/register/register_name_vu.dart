import 'package:flutter/material.dart';
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
                style: TextStyle(fontSize: 20, color: Colors.grey[800]),
              ),
              const SizedBox(
                height: 4,
              ),
              SizedBox(
                width: 250,
                child: Text(
                  'Please Enter Your Name',
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
  RegisterNameVM viewModelBuilder(BuildContext context) {
    return RegisterNameVM();
  }
}
