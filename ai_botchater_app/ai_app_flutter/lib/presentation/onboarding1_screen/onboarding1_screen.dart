import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'controller/onboarding1_controller.dart';

class Onboarding1Screen extends GetWidget<Onboarding1Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                      onTap: () {
                        navigateLoginScreen();
                      },
                      child: Padding(
                          padding: getPadding(right: 9),
                          child: Text("lbl_skip".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtAirbnbCerealWBd18)))),
              CustomImageView(
                  imagePath: ImageConstant.imgManattendingonlinemeeting,
                  height: getVerticalSize(381),
                  width: getHorizontalSize(392),
                  margin: getMargin(top: 32)),
              Container(
                  width: getHorizontalSize(336),
                  margin: getMargin(left: 27, top: 27, right: 27),
                  child: Text("msg_various_ai_assistants".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtAirbnbCerealWBd34Black900)),
              Container(
                  width: getHorizontalSize(309),
                  margin: getMargin(left: 41, top: 8, right: 40),
                  child: Text("msg_lorem_ipsum_dolor".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtCircularStdBook17)),
              Container(
                  height: getVerticalSize(8),
                  margin: getMargin(top: 53),
                  child: SmoothIndicator(
                      offset: 0,
                      count: 3,
                      size: Size.zero,
                      effect: ScrollingDotsEffect(
                          spacing: 6,
                          activeDotColor: ColorConstant.black900,
                          dotColor: ColorConstant.gray300,
                          dotHeight: getVerticalSize(8),
                          dotWidth: getHorizontalSize(8)))),
              CustomButton(
                  height: getVerticalSize(56),
                  text: "lbl_next".tr,
                  margin: getMargin(left: 9, top: 56, right: 9, bottom: 5),
                  onTap: () {
                    navigateOnboarding3();
                  })
            ])));
  }

  navigateLoginScreen() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  navigateOnboarding3() {
    Get.toNamed(
      AppRoutes.onboarding2Screen,
    );
  }
}
