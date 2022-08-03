import 'package:flutter/material.dart';
import 'package:health_buddy/home/bottom_summery_cell_vu.dart';
import './header_cell_vu.dart';
import './home_vm.dart';
import 'package:stacked/stacked.dart';

import './coursel_slide_cell_vu.dart';

class HomeVU extends ViewModelBuilderWidget<HomeVM> {
  const HomeVU({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, HomeVM viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: const Color(0xffFCFCFD),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderCellVU(),
              CarouselSliderCellVU(viewModel: viewModel),
              buildindicator(viewModel),
              const BottomSummeryCellVU()
            ],
          ),
        ),
      ),
    );
  }

  @override
  HomeVM viewModelBuilder(BuildContext context) {
    return HomeVM();
  }
}
