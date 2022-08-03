import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

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
                  Text(
                    'Health Buddy',
                    style: TextStyle(fontSize: 20, color: Colors.grey[800]),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      print('object');
                    },
                    child: Text(
                      'Skip',
                      style:
                          TextStyle(fontSize: 14, color: Colors.lightBlue[500]),
                    ),
                  ),
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
              getListTile(),
              getListTile(),
              getListTile(),
              getListTile(),
              getListTile(),

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
                  child: const Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  getListTile() {
    return const ListTile(
      leading: Icon(Icons.calendar_today),
      title: Text(
        'Date of birth',
        style: TextStyle(fontSize: 16, color: Color(0xff98A2B3)),
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
  RegisterFormVM viewModelBuilder(BuildContext context) {
    return RegisterFormVM();
  }
}
