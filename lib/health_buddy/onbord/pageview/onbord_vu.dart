import 'package:flutter/material.dart';
import 'package:health_buddy/health_buddy/login/login_vu.dart';
import 'package:stacked/stacked.dart';
import '../../utils/chi_router.dart';
import '../../utils/constants.dart';
import '../../utils/widgets.dart';
import 'onbord_vm.dart';

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
                        CHIRouter.pushReplacement(context, const LoginVU()),
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
                  itemBuilder: (BuildContext context, indx) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          viewModel.screens[indx].image,
                          height: 425,
                          width: 330,
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
                        curve: Curves.ease,
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
                      if (viewModel.currentIndex ==
                          viewModel.screens.length - 1) {
                        CHIRouter.push(context, const LoginVU());
                      }
                      viewModel.onIncreament();
                      // CHIRouter.push(context, const OnBoardVU());
                      viewModel.pageController.nextPage(
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.ease,
                      );
                      // viewModel.pageController.attach()
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

// class Slide extends StatelessWidget {
//   final Widget hero;
//   final String title;
//   final String subtitle;

//   const Slide({Key? key, required this.hero, required this.title, required this.subtitle,})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Expanded(child: hero),
//           Padding(
//             padding: const EdgeInsets.all(20),
//             child: Column(
//               children: [
//                 Text(
//                   title,
//                   style: ,
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Text(
//                   subtitle,
//                   style: ,
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(
//                   height: 35,
//                 ),
//               ],
//             ),
//           ),
          
//           SizedBox(
//             height: 4,
//           )
//         ],
//       ),
//     );
//   }
// }

