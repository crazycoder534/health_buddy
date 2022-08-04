import 'package:flutter/material.dart';
import 'package:health_buddy/health%20buddy/home/appointments/doctors/doctor%20details/doctor_detail_vu.dart';

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
      home: const DoctorDetailVU(),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// /// This Widget is the main application widget.
// class MyApp extends StatelessWidget {
//   static const String _title = 'Radio Button Example';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: const Center(
//           child: MyStatefulWidget(),
//         ),
//       ),
//     );
//   }
// }

// enum BestTutorSite { javatpoint, w3schools, tutorialandexample }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);

//   @override
//   _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   BestTutorSite _site = BestTutorSite.javatpoint;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         ListTile(
//           title: const Text('www.javatpoint.com'),
//           leading: Radio(
//             value: BestTutorSite.javatpoint,
//             groupValue: _site,
//             onChanged: (BestTutorSite? value) {
//               setState(() {
//                 _site = value!;
//               });
//             },
//           ),
//         ),
//         ListTile(
//           title: const Text('www.w3school.com'),
//           leading: Radio(
//             value: BestTutorSite.w3schools,
//             groupValue: _site,
//             onChanged: (BestTutorSite? value) {
//               setState(() {
//                 _site = value!;
//               });
//             },
//           ),
//         ),
//         ListTile(
//           title: const Text('www.tutorialandexample.com'),
//           leading: Radio(
//             value: BestTutorSite.tutorialandexample,
//             groupValue: _site,
//             onChanged: (BestTutorSite? value) {
//               setState(() {
//                 _site = value!;
//               });
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
