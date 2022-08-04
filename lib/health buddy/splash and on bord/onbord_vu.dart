import 'package:flutter/material.dart';
import 'package:health_buddy/health%20buddy/login/login_vu.dart';
import 'package:stacked/stacked.dart';
import '../register/register_name_vu.dart';
import '../utils/chi_router.dart';
import '../utils/constants.dart';
import '../utils/widgets.dart';
import './onbord_vm.dart';

class OnBoardVU extends ViewModelBuilderWidget<OnBordVM> {
  const OnBoardVU({super.key});

  @override
  Widget builder(BuildContext context, OnBordVM viewModel, Widget? child) {
    int indx = 0;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SkipButton(
                    onTap: () =>
                        CHIRouter.push(context, const RegisterNameVU()),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Expanded(
                child: PageView.builder(
                  itemCount: viewModel.screens.length,
                  controller: viewModel.pageController,
                  onPageChanged: viewModel.changePage,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, indx) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 400,
                          child: Image.asset(
                            viewModel.screens[indx].image,
                            fit: BoxFit.fill,
                            width: 330,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          viewModel.screens[indx].titleText,
                          style: titleTextStyle,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          viewModel.screens[indx].subtitleText,
                          style: subTitleTextStyle,
                        ),
                        const Spacer(),
                      ],
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Text("${viewModel.numberOfPage.toString()}/4"),
                  const Spacer(),
                  ArrowButton(
                    onTap: () {
                      viewModel.pageController.previousPage(
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.easeIn,
                      );
                      viewModel.onDecreament();
                    },
                  ),
                  const SizedBox(
                    width: 61,
                  ),
                  ArrowButton(
                    leftAngle: false,
                    onTap: () {
                      if (indx == viewModel.screens.length - 1) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginVU()));
                      }
                      viewModel.onIncreament();
                      viewModel.pageController.nextPage(
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.easeIn,
                      );
                    },
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
  OnBordVM viewModelBuilder(BuildContext context) {
    return OnBordVM();
  }
}
