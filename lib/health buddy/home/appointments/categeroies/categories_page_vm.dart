import 'package:stacked/stacked.dart';

import 'categories_list/model.dart';

class CategoriesPageVM extends BaseViewModel {
  List<Categories> item = [
    Categories(
        "assets/images/app_assets/heart.svg", "Cardiologist", "3 Doctors"),
    Categories(
        "assets/images/app_assets/account.svg", "Psychologist", "3 Doctors"),
    Categories(
        "assets/images/app_assets/account.svg", "Dermotologist", "7 Doctors"),
  ];
}
