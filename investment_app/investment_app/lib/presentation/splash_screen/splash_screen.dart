import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SafeArea(
          child: Container(
              width: size.width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                        svgPath: ImageConstant.imgProfits1,
                        height: getSize(128.00),
                        width: getSize(128.00)),
                    Padding(
                        padding: getPadding(top: 18, bottom: 5),
                        child: Text("lbl_invest".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterThin32.copyWith(
                                letterSpacing: getHorizontalSize(0.40),
                                height: getVerticalSize(1.01))))
                  ])),
        ));
  }
}
