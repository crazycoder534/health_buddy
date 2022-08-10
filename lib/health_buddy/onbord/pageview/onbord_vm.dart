import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import 'model.dart';

class OnBordVM extends BaseViewModel {
  int currentIndex = 0;
  final pageController = PageController(initialPage: 0);

  int numberOfPage = 1;
  changePage(int index) {
    currentIndex = index;
    notifyListeners();
  }

  onIncreament() {
    if (numberOfPage < 4) {
      numberOfPage++;
      notifyListeners();
    }
  }

  onDecreament() {
    if (numberOfPage > 1) {
      numberOfPage--;
      notifyListeners();
    }
  }

  List<OnboardModel> screens = [
    OnboardModel(
      image: 'assets/images/onboarding_images/image1.png',
      titleText: "24/7 Round-the-Clock- Service",
      subtitleText:
          "24/7 Medical services available for all chronic, acute & palliative care ",
    ),
    OnboardModel(
      image: 'assets/images/onboarding_images/image2.png',
      titleText: "Advance Urgent Care",
      subtitleText: "A complete solution for all immediate care needs.",
    ),
    OnboardModel(
      image: 'assets/images/onboarding_images/Telemedicine.png',
      titleText: "Online Teleconsultation",
      subtitleText:
          "Book video call appointment & connect with experienced doctors over the phone.",
    ),
    OnboardModel(
      image: 'assets/images/onboarding_images/image4.png',
      titleText: "Lab With Instant Results",
      subtitleText:
          "Quick & easy laboratory tests, diagnostics with instant results",
    ),
  ];
}
