import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar chiAppBar(String title, BuildContext context, {bool? centerTile}) {
  return AppBar(
      shadowColor: const Color.fromRGBO(0x29, 0x00, 0x00, 1.0).withOpacity(0.3),
      // elevation: 0.3,
      backgroundColor: Colors.white,
      centerTitle: centerTile,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Color(0xff1F222A),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
            child: appBarButtonContainer(const Color(0xffE0F2FE),
                imageUrl: 'assets/images/app assets/arrow.svg',
                width: 10,
                height: 10),
            onTap: () => Navigator.pop(context)),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            child: appBarButtonContainer(const Color(0xffE0F2FE),
                width: 16,
                height: 16,
                imageUrl: 'assets/images/app assets/shape.svg'),
            onTap: () {},
          ),
        ),
      ]);
}

Widget appBarButtonContainer(Color? color,
    {required double width, required double height, required String imageUrl}) {
  return Container(
    width: 36,
    height: 36,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          imageUrl,
          width: width,
          height: height,
        ),
      ],
    ),
  );
}

// AppBar chiAppBar(String title, BuildContext context,
//     {Widget? leading, List<Widget>? actions, bool? centerTile}) {
//   return AppBar(
//     shadowColor: const Color.fromRGBO(0x29, 0x00, 0x00, 1.0).withOpacity(0.3),
//     // elevation: 0.3,
//     backgroundColor: Colors.white,
//     centerTitle: centerTile,
//     title: Text(
//       title,
//       style: const TextStyle(
//         fontSize: 20,
//         fontWeight: FontWeight.w500,
//         color: Color(0xff1F222A),
//       ),
//     ),
//     leading: leading,
//     actions: actions,
//   );
// }
