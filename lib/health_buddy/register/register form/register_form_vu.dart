import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import '../../home/home_vu.dart';
import '../../utils/chi_router.dart';
import '../../utils/constants.dart';
import '../../utils/widgets.dart';
import 'register_form_vm.dart';

class RegisterFormVU extends ViewModelBuilderWidget<RegisterFormVM> {
  const RegisterFormVU({super.key});

  @override
  Widget builder(
      BuildContext context, RegisterFormVM viewModel, Widget? child) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Health Buddy', style: titleTextStyle),
                    SkipButton(
                      onTap: () =>
                          CHIRouter.pushReplacement(context, const HomeVU()),
                    ),
                  ],
                ),
                Text('Thank you for providing the account information',
                    style: subTitleTextStyle),
                const SizedBox(height: 24),
                Text('Lets setup your account', style: titleTextStyle),
                const SizedBox(height: 4),
                Text(
                    'Follow the simple step to finish your eclinic account creation',
                    style: subTitleTextStyle),
                const SizedBox(height: 24),
                CHITextField(
                  hintText: 'Date of birth',
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: SvgPicture.asset('assets/icons/calender.svg',
                      fit: BoxFit.scaleDown),
                ),
                const SizedBox(height: 8),
                CHITextField(
                  hintText: 'example@email.com',
                  prefixIcon: SvgPicture.asset('assets/icons/calender.svg',
                      fit: BoxFit.scaleDown),
                ),
                const SizedBox(height: 8),
                CHITextField(
                  hintText: 'Height',
                  prefixIcon: SvgPicture.asset('assets/icons/calender.svg',
                      fit: BoxFit.scaleDown),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 8),
                CHITextField(
                  hintText: 'City',
                  prefixIcon: SvgPicture.asset('assets/icons/calender.svg',
                      fit: BoxFit.scaleDown),
                ),
                const SizedBox(height: 8),
                CHITextField(
                  hintText: 'Address',
                  prefixIcon: SvgPicture.asset('assets/icons/calender.svg',
                      fit: BoxFit.scaleDown),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CHIButton(
                      btnLabel: 'Save',
                      onTap: () {
                        CHIRouter.pushReplacement(context, const HomeVU());
                      }),
                ),
              ],
            ),
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
