import 'package:flutter/material.dart';

class CHIRouter {
  static push(BuildContext context, Widget nextPage) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => nextPage));
  }

  static pushReplacement(BuildContext context, Widget nextPage) {
    return Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => nextPage));
  }

  static pushNamed(BuildContext context, String routeName) {
    return Navigator.pushNamed(context, routeName);
  }

  static pop(BuildContext context) {
    return Navigator.pop(context);
  }
}

class ThisIsFadeRoute extends PageRouteBuilder {
  Widget? page;
  Widget? route;

  ThisIsFadeRoute({this.page, this.route})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page!,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: route,
          ),
        );
}
