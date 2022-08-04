import 'package:stacked/stacked.dart';

class LoginVM extends BaseViewModel {
  String val = 'PK';
  onMenuChanged(String? newVal) {
    val = newVal!;
    notifyListeners();
  }
}
