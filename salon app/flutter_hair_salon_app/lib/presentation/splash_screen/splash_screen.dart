import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.pink800,
            body: CustomImageView(
              alignment: Alignment.center,
              imagePath: ImageConstant.imgLogo011,
              height: getVerticalSize(112),
              width: getVerticalSize(103),
              fit: BoxFit.fill,
            )));
  }
}
