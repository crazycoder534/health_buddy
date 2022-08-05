import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../utils/constants.dart';

class ConfirmAppointmentVM extends BaseViewModel {
  int selectedIndex = 9;
  List<String> dayList = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  List<int> dateList = [1, 2, 3, 4, 5, 6, 7];
  List<bool> sessionListBool = [true, false, false];

  List<Color> colorList = [
    Colors.blue,
    grey100,
    grey100,
  ];
  List<bool> timeListBools = [true, false, false, false, false];
}
