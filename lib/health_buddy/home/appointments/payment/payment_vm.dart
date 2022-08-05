import 'package:flutter/material.dart';
import 'package:health_buddy/health_buddy/home/appointments/payment/payment_vu.dart';
import 'package:stacked/stacked.dart';

class PaymentVM extends BaseViewModel {
  int radioValue = 0;
  List<bool> payment = [false, false];

  void handleValue(value) {
    radioValue = value;
    notifyListeners();
  }
}
