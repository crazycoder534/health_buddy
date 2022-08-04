import 'package:flutter/material.dart';
import '../home/bottom_summery_cell_vu.dart';
import './header_cell_vu.dart';
import './home_vm.dart';
import 'package:stacked/stacked.dart';

import './coursel_slide_cell_vu.dart';

class HomeVU extends ViewModelBuilderWidget<HomeVM> {
  const HomeVU({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, HomeVM viewModel, Widget? child) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HeaderCellVU(),
            Expanded(
              child: ListView(
                children: [
                  CarouselSliderCellVU(viewModel: viewModel),
                  buildindicator(viewModel),
                  const BottomSummeryCellVU()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  HomeVM viewModelBuilder(BuildContext context) {
    return HomeVM();
  }
}
