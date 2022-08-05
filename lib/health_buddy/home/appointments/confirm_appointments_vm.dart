import 'package:stacked/stacked.dart';

class ConfirmAppointmentVM extends BaseViewModel {
  int selectedIndex = 9;
  List<String> dayList = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  List<int> dateList = [1, 2, 3, 4, 5, 6, 7];
  List<bool> textColorList = [false, false, false];
}
