import 'package:stacked/stacked.dart';

class PaymentVM extends BaseViewModel {
  int radioValue = 0;
  List<bool> payment = [false, false];

  void handleValue(value) {
    radioValue = value;
    notifyListeners();
  }
}
