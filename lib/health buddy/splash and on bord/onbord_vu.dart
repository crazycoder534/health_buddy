import 'package:flutter/material.dart';
import 'package:health_buddy/health%20buddy/utils/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:svg_icon/svg_icon.dart';

import '../utils/constants.dart';
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
                children: const [
                  SkipButton(),
                ],
              ),
              const SizedBox(
                height: 13,
              ),
              Expanded(
                child: PageView.builder(
                  itemCount: viewModel.screens.length,
                  controller: viewModel.pageController,
                  onPageChanged: viewModel.changePage,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgIcon(
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

                                if (viewModel.numberOfPage == 1) {
                                  viewModel.numberOfPage = 1;
                                } else {
                                  viewModel.numberOfPage--;
                                }
                              },
                            ),
                            const SizedBox(
                              width: 61,
                            ),
                            ArrowButton(
                              leftAngle: false,
                              onTap: () {
                                if (index == viewModel.screens.length - 1) {
                                  // Navigator.pushReplacement(context,
                                  //     MaterialPageRoute(builder: (context) => Home()));
                                  viewModel.numberOfPage =
                                      viewModel.numberOfPage;
                                }

                                viewModel.pageController.nextPage(
                                  duration: const Duration(milliseconds: 100),
                                  curve: Curves.easeIn,
                                );
                                if (index != viewModel.screens.length - 1) {
                                  viewModel.numberOfPage++;
                                }
                              },
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ),
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
