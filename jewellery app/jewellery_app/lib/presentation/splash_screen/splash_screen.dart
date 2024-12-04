import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:jewellery_app/core/app_export.dart';

import 'controller/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  SplashScreen({Key? key}) : super(key: key);
  SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return ColorfulSafeArea(
      color: appTheme.buttonColor,
      child: Scaffold(
        backgroundColor: appTheme.buttonColor,
        body: SizedBox(
          width: double.maxFinite,
          child: CustomImageView(
            svgPath: ImageConstant.imglogo,
            height: getSize(119),
            width: getSize(105),
            alignment: Alignment.center,
            margin: getMargin(bottom: 5),
          ),
        ),
      ),
    );
  }
}
