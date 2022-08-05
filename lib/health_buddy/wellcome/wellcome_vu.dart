import 'package:flutter/material.dart';
import '../utils/constants.dart';

class WellcomeVU extends StatelessWidget {
  WellcomeVU({Key? key, required this.controller})
      : scaleController = Tween<double>(begin: 0, end: 10).animate(
            CurvedAnimation(
                parent: controller,
                curve: const Interval(0, 1, curve: Curves.ease))),
        opacity = Tween<double>(begin: 0, end: 1).animate(controller),
        super(key: key);
  final Animation<double> controller;
  final Animation<double> scaleController;
  final Animation<double> opacity;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: controller, builder: _buildAnimation);
  }

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: TweenAnimationBuilder(
              tween: Tween<double>(
                begin: 1,
                end: 0,
              ),
              duration: const Duration(seconds: 1),
              curve: Curves.ease,
              builder: (BuildContext context, double val, Widget? child) {
                return Padding(
                    padding: EdgeInsets.only(
                      top: val * 150,
                    ),
                    child: child);
              },
              child: Container(
                height: 156,
                width: 156,
                decoration:
                    BoxDecoration(color: blue500, shape: BoxShape.circle),
                child: ScaleTransition(
                  alignment: Alignment.center,
                  scale: scaleController,
                  child: Container(
                    decoration: BoxDecoration(
                        color: blue500,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
              ),
            ),
          ),
          SlideTransition(
            position: Tween<Offset>(
                    begin: const Offset(0, 0.4), end: Offset.zero)
                .animate(
                    CurvedAnimation(parent: controller, curve: Curves.ease)),
            child: FadeTransition(
              opacity: opacity,
              child: Center(
                child: Container(
                  width: 220,
                  height: 76,
                  child: Center(
                      child: Text('Welcome to Health buddy',
                          textAlign: TextAlign.center,
                          style: titleTextStyle.copyWith(
                              color: whiteColor, fontSize: 30))),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
