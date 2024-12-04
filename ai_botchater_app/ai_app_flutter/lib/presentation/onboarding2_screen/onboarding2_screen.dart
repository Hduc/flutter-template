import 'controller/onboarding2_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding2Screen extends GetWidget<Onboarding2Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 12, top: 50, right: 12, bottom: 50),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgBusinessstartup,
                          height: getSize(389),
                          width: getSize(389),
                          margin: getMargin(top: 17)),
                      Container(
                          width: getHorizontalSize(343),
                          margin: getMargin(left: 23, top: 27, right: 22),
                          child: Text("msg_try_premium_for".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtAirbnbCerealWBd34Black900)),
                      Container(
                          width: getHorizontalSize(309),
                          margin: getMargin(left: 40, top: 8, right: 39),
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
                          text: "lbl_get_started".tr,
                          margin: getMargin(left: 8, top: 56, right: 8),
                          onTap: () {
                            navigateLoginScreen();
                          })
                    ]))));
  }

  navigateLoginScreen() {
    Get.offAllNamed(
      AppRoutes.loginScreen,
    );
  }
}
