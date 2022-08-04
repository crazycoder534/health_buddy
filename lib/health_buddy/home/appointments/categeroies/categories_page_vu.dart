import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_buddy/health_buddy/utils/constants.dart';

import './categories_page_vm.dart';
import '../../../utils/chi_router.dart';
import 'package:stacked/stacked.dart';

import '../../../utils/widgets.dart';
import 'categories_list/categories_list_vu.dart';

class CategoriesPageVU extends ViewModelBuilderWidget<CategoriesPageVM> {
  const CategoriesPageVU({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, CategoriesPageVM viewModel, Widget? child) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            headingText(headingTxt: "Categories"),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: chiTextButton(
                btnTitle: "See All",
                onTap: () => CHIRouter.push(
                    context, CategoriesListVU(vieModel: viewModel)),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Container(
            height: 84,
            decoration: BoxDecoration(color: whiteColor, boxShadow: cardShadow),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return categoriesPageCellVU(context, viewModel);
              },
              itemCount: 6,
            ),
          ),
        ),
      ],
    );
  }

  @override
  CategoriesPageVM viewModelBuilder(BuildContext context) {
    return CategoriesPageVM();
  }
}

Widget categoriesPageCellVU(BuildContext context, CategoriesPageVM vieModel) {
  return Padding(
    padding: const EdgeInsets.only(
      right: 8,
    ),
    child: Container(
        width: 102,
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 1, color: grey100),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 0),
                color: const Color(0xff000000).withOpacity(0.06),
                blurRadius: 31,
                spreadRadius: 10,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/app_assets/heart.svg"),
            const SizedBox(height: 12.0),
            Text(
              "Cardiologist",
              style: smallTwoTextStyle,
            ),
          ],
        )),
  );
}
