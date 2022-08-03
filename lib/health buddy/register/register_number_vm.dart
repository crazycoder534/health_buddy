import 'package:stacked/stacked.dart';

class RegisterNumberVM extends BaseViewModel {
  bool value1 = false;
  bool value2 = false;
  String val = 'PK';
  onMenuChanged(String? newVal) {
    val = newVal!;
    notifyListeners();
  }

  onCheckBox1Changed(bool? value) {
    value1 = value!;
    notifyListeners();
  }

  onCheckBox2Changed(bool? value) {
    value2 = value!;
    notifyListeners();
  }
}
