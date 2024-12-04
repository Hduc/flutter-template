import 'controller/splash_controller.dart';
import 'package:carwash_app/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.indigo800,
        body: SafeArea(
          child: Container(
              width: double.maxFinite,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                        svgPath: ImageConstant.imgGroupWhiteA700,
                        height: getVerticalSize(140),
                        width: getHorizontalSize(120),
                        margin: getMargin(bottom: 5))
                  ])),
        ));
  }
}
