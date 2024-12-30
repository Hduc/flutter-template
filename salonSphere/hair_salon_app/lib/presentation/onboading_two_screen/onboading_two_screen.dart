import 'controller/onboading_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboadingTwoScreen extends GetWidget<OnboadingTwoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
            width: double.maxFinite,
            padding: getPadding(left: 16, top: 21, right: 16, bottom: 21),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                          onTap: () {
                            onTapTxtSkip();
                          },
                          child: Text("lbl_skip2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtBody))),
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse1320x320,
                      height: getSize(320),
                      width: getSize(320),
                      radius: BorderRadius.circular(getHorizontalSize(160)),
                      margin: getMargin(top: 58)),
                  Container(
                      width: getHorizontalSize(367),
                      margin: getMargin(left: 11, top: 27, right: 17),
                      child: Text("msg_book_your_favorite".tr,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtSFProTextBold28)),
                  Container(
                      width: getHorizontalSize(299),
                      margin: getMargin(left: 48, top: 23, right: 47),
                      child: Text("msg_it_was_popularised".tr,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtBody)),
                  Container(
                      height: getVerticalSize(8),
                      margin: getMargin(top: 28, bottom: 5),
                      child: SmoothIndicator(
                          offset: 0,
                          count: 3,
                          size: Size.zero,
                          effect: ScrollingDotsEffect(
                              spacing: 8,
                              activeDotColor: ColorConstant.black900,
                              dotColor: ColorConstant.gray300,
                              dotHeight: getVerticalSize(8),
                              dotWidth: getHorizontalSize(8))))
                ])),
        bottomNavigationBar: CustomButton(
            height: getVerticalSize(53),
            text: "lbl_next".tr,
            margin: getMargin(left: 16, right: 16, bottom: 74),
            onTap: () {
              onTapNext();
            }));
  }

  onTapTxtSkip() {
    Get.toNamed(
      AppRoutes.onboadingThreeScreen,
    );
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.onboadingThreeScreen,
    );
  }
}
