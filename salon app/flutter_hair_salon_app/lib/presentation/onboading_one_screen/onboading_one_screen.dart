// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:flutter/services.dart';
import 'package:hair_salon_app/presentation/onboading_one_screen/models/onboading_one_model.dart';

import 'controller/onboading_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboadingOneScreen extends GetWidget<OnboadingOneController> {
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
            mainAxisAlignment: MainAxisAlignment.start, children: [
          Expanded(
              child: PageView.builder(
            physics: BouncingScrollPhysics(),
            onPageChanged: (index) {
              _onPageViewChange(index);
            },
            controller: pageController,
            itemCount: controller.onboadingOneModelObj.length,
            itemBuilder: (context, index) {
              OnboadingOneModel onboadingOneModel =
                  controller.onboadingOneModelObj[index];
              return Column(
                children: [
                  SizedBox(
                    height: getVerticalSize(60),
                  ),
                  CustomImageView(
                    imagePath: onboadingOneModel.image,
                    height: getSize(320),
                    width: getSize(320),
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: getVerticalSize(30),
                  ),
                  Container(
                      margin: getMargin(left: 27, right: 27),
                      child: Text(onboadingOneModel.title,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style:
                              AppStyle.txtSFProTextBold28.copyWith(height: 1))),
                  SizedBox(
                    height: getVerticalSize(30),
                  ),
                  Container(
                      margin: getMargin(left: 47, right: 47),
                      child: Text(onboadingOneModel.description,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtBody.copyWith(height: 1))),
                  SizedBox(
                    height: getVerticalSize(30),
                  ),
                ],
              );
            },
          )),
          SmoothPageIndicator(
              count: controller.onboadingOneModelObj.length,
              controller: pageController,
              effect: ScrollingDotsEffect(
                  spacing: getVerticalSize(8),
                  activeDotColor: ColorConstant.black900,
                  dotColor: ColorConstant.gray300,
                  dotHeight: getVerticalSize(8),
                  dotWidth: getVerticalSize(8))),
          SizedBox(
            height: getVerticalSize(131),
          ),
          Obx(
            () => CustomButton(
                height: getVerticalSize(53),
                text: controller.position.value ==
                        controller.onboadingOneModelObj.length - 1
                    ? "Get started"
                    : "lbl_next".tr,
                margin: getMargin(left: 16, right: 16),
                onTap: () {
                  onTapNext();
                }),
          ),
          Obx(
            () =>  controller.position.value ==
                controller.onboadingOneModelObj.length - 1 ?  SizedBox(height: getVerticalSize(106),) : Padding(
              padding: getPadding(bottom: 32,top: 55),
              child: GestureDetector(
                  onTap: () {
                    onTapTxtSkip();
                  },
                  child: Text("lbl_skip2".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtBody)),
            ),
          ),
        ]),
      )),
    );
  }

  onTapTxtSkip() {
    if (controller.position.value ==
        controller.onboadingOneModelObj.length - 1) {
      PrefUtils.setIsIntro(false);
      Get.toNamed(
        AppRoutes.logInScreen,
      );
    } else {
      controller.onChange(2.obs);
      pageController.jumpToPage(2);
    }
  }

  onTapNext() {
    if (controller.position.value ==
        controller.onboadingOneModelObj.length - 1) {
      PrefUtils.setIsIntro(false);
      Get.toNamed(
        AppRoutes.logInScreen,
      );
    } else {
      pageController.jumpToPage(controller.position.value + 1);
    }
  }

  _onPageViewChange(int page) {
    controller.onChange(page.obs);
  }
}
