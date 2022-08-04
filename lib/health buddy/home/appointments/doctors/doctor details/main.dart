import 'package:flutter/material.dart';
import 'package:health_buddy/health%20buddy/splash%20and%20on%20bord/onbord_vu.dart';

import '../../../../utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CHITheme,
      home: const OnBoardVU(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final List<String> _listViewData = [
//     "Text 1",
//     "Text 2",
//     "Text 3",
//   ];

//   int _selectedIndex = 0;

//   _onSelected(int index) {
//     setState(() => _selectedIndex = index);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.lightGreen,
//         title: const Text(
//           'Change ListView Bg Color',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: SizedBox(
//           height: 48,
//           child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: _listViewData.length,
//               itemBuilder: (context, index) {
//                 return GestureDetector(
//                   onTap: () => _onSelected(index),
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: _selectedIndex == index
//                             ? Colors.lightGreen
//                             : Colors.white,
//                         border: Border.all(color: const Color(0xffEAE9F0)),
//                         borderRadius: BorderRadius.circular(15)),
//                     width: 90,
//                     child: Center(
//                       child: Text(
//                         _listViewData[index],
//                         style: prefixStyle,
//                         // style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//                       ),
//                     ),
//                   ),
//                 );
//               }),
//         ),
//       ),
//     );
//   }
// }
