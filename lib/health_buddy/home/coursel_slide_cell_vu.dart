import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../utils/constants.dart';
import '../utils/widgets.dart';
import 'home_vm.dart';

class CarouselSliderCellVU extends StatelessWidget {
  final HomeVM viewModel;
  const CarouselSliderCellVU({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        options: CarouselOptions(
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            initialPage: 0,
            enableInfiniteScroll: false,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            height: 106,
            onPageChanged: (index, reason) {
              viewModel.current = index;
              viewModel.notifyListeners();
            }),
        itemCount: 3,
        itemBuilder: (context, index, realindex) {
          return Container(
            margin: const EdgeInsets.only(right: 8, left: 5.0),
            child: chiBanner(
                title: "Free Live Chat",
                subTitle:
                    "Ab ghar bathay he doctor sy muft mashwara hasil karen.",
                imageUrl: "assets/images/app_assets/chat.svg"),
          );
        });
  }
}

Widget buildindicator(HomeVM viewModel) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 8),
        child: AnimatedSmoothIndicator(
          activeIndex: viewModel.current,
          count: 3,
          effect: JumpingDotEffect(
              activeDotColor: blue500,
              dotHeight: 6,
              dotWidth: 6,
              dotColor: blue100),
        ),
      ),
    ],
  );
}
