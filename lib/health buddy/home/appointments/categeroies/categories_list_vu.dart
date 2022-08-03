import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/widgets.dart';

class CategoriesListVU extends StatelessWidget {
  const CategoriesListVU({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            headingText(headingTxt: "Categories"),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: chiTextButton(btnTitle: "See All", onTap: () {}),
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
            decoration:
                BoxDecoration(color: const Color(0xffFCFCFD), boxShadow: [
              BoxShadow(
                offset: const Offset(0, 0),
                color: const Color(0xff000000).withOpacity(0.06),
                blurRadius: 31,
                spreadRadius: 10,
              )
            ]),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return categoriesCellVU();
              },
              itemCount: 6,
            ),
          ),
        ),
      ],
    );
  }
}

Widget categoriesCellVU() {
  return Padding(
    padding: const EdgeInsets.only(
      right: 8,
    ),
    child: Container(
        width: 102,
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 14),
        decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 1,
              color: const Color(0xffEAE9F0),
            ),
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
            SvgPicture.asset("assets/heart.svg"),
            const SizedBox(height: 12.0),
            const Text(
              "Cardiologist",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xff1D2939),
              ),
            ),
          ],
        )),
  );
}
