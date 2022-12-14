import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/widgets.dart';
import '../categories_page_vm.dart';
import '../model.dart';

class CategoriesListVU extends StatelessWidget {
  const CategoriesListVU({Key? key, required this.vieModel}) : super(key: key);
  final CategoriesPageVM vieModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const CHIAppBar(title: "Categories"),
          Expanded(
            child: ListView.builder(
                itemCount: vieModel.item.length,
                itemBuilder: (context, index) =>
                    categoriesListCellVU(vieModel.item[index])),
          ),
        ],
      ),
    ));
  }

  Widget categoriesListCellVU(Categories item) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8.0),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
              color: const Color(0xffffffff),
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
          child: Row(
            children: [
              SvgPicture.asset(item.image),
              const SizedBox(
                width: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.title, style: prefixStyle),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(item.availableDoctor, style: mediumTextStyle),
                ],
              ),
              const Spacer(),
              SvgPicture.asset("assets/icons/shape.svg"),
            ],
          )),
    );
  }
}
