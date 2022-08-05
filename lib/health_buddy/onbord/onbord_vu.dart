import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_buddy/health_buddy/login/login_vu.dart';
import 'package:stacked/stacked.dart';
import '../utils/chi_router.dart';
import '../utils/constants.dart';
import '../utils/widgets.dart';
import './onbord_vm.dart';

class OnBoardVU extends ViewModelBuilderWidget<OnBordVM> {
  const OnBoardVU({super.key});

  @override
  Widget builder(BuildContext context, OnBordVM viewModel, Widget? child) {
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
                    onTap: () => CHIRouter.push(context, const LoginVU()),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: PageView.builder(
                  itemCount: 4,
                  controller: viewModel.pageController,
                  onPageChanged: viewModel.changePage,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          viewModel.screens[index].image,
                          height: 425,
                          width: 330,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          viewModel.screens[index].titleText,
                          style: titleTextStyle,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          viewModel.screens[index].subtitleText,
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
