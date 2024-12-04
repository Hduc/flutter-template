// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:flutter/services.dart';

import 'controller/onboarding_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'models/onboarding_model.dart';

// ignore: must_be_immutable
class OnboardingScreen extends GetWidget<OnboardingController> {
  Future<bool> _requestPop() async {
    if (Platform.isIOS) {
      exit(0);
    } else {
      SystemNavigator.pop();
    }
    return new Future.value(false);
  }

  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _requestPop,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: getPadding(top: 16, right: 20),
                child: GestureDetector(
                    onTap: () {
                      navigateLoginScreen();
                    },
                    child: Text("lbl_skip".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtAirbnbCerealWBd18)),
              ),
            ),
            Expanded(
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                onPageChanged: (index) {
                  _onPageViewChange(index);
                },
                controller: pageController,
                itemCount: controller.onboardingOneModelObj.length,
                itemBuilder: (context, index) {
                  OnboardingModel onboardingModel =
                      controller.onboardingOneModelObj[index];
                  return Column(
                    children: [
                      SizedBox(
                        height: getVerticalSize(32),
                      ),
                      CustomImageView(
                        imagePath: onboardingModel.image,
                        height: getSize(381),
                        width: getSize(392),
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        height: getVerticalSize(30),
                      ),
                      Container(
                          margin: getMargin(left: 20, right: 20),
                          child: Text(onboardingModel.name,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtAirbnbCerealWBd34Black900)),
                      SizedBox(
                        height: getVerticalSize(16),
                      ),
                      Container(
                          margin: getMargin(left: 20, right: 20),
                          child: Text(onboardingModel.discription,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtCircularStdBook17)),
                      SizedBox(
                        height: getVerticalSize(56),
                      ),
                    ],
                  );
                },
              ),
            ),
            SmoothPageIndicator(
                count: controller.onboardingOneModelObj.length,
                controller: pageController,
                effect: ScrollingDotsEffect(
                    spacing: getVerticalSize(6),
                    activeDotColor: ColorConstant.black900,
                    dotColor: ColorConstant.gray300,
                    dotHeight: getVerticalSize(8),
                    dotWidth: getHorizontalSize(8))),
            SizedBox(
              height: getVerticalSize(56),
            ),
            Obx(
              () =>  CustomButton(
                  height: getVerticalSize(56),
                  text: controller.position.value ==
                      controller.onboardingOneModelObj.length - 1 ? "Get started" : "lbl_next".tr,
                  margin: getMargin(left: 20, bottom: 16,right: 20),
                  onTap: () {
                    navigateOnboargin2();
                  }),
            )
          ],
        ),
      )),
    );
  }

  navigateLoginScreen() {
    PrefUtils.setIsIntro(false);
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  navigateOnboargin2() {

    if (controller.position.value ==
        controller.onboardingOneModelObj.length - 1) {
      PrefUtils.setIsIntro(false);
      Get.toNamed(
        AppRoutes.loginScreen,
      );
    } else {
      pageController
          .jumpToPage(controller.position.value + 1);
    }
  }

  _onPageViewChange(int page) {
    controller.onChange(page.obs);
  }
}
