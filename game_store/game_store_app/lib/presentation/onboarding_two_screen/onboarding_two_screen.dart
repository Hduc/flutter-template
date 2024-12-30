import '../onboarding_two_screen/widgets/sliderlistensou_item_widget.dart';
import 'controller/onboarding_two_controller.dart';
import 'models/sliderlistensou_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingTwoScreen extends GetWidget<OnboardingTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.deepPurpleA100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 55, right: 20, bottom: 55),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgHeadphones1,
                          height: getSize(356),
                          width: getSize(356),
                          margin: getMargin(top: 40)),
                      Padding(
                          padding: getPadding(left: 28, top: 39, right: 27),
                          child: Obx(() => CarouselSlider.builder(
                              options: CarouselOptions(
                                  height: getVerticalSize(110),
                                  initialPage: 0,
                                  autoPlay: true,
                                  viewportFraction: 1.0,
                                  enableInfiniteScroll: false,
                                  scrollDirection: Axis.horizontal,
                                  onPageChanged: (index, reason) {
                                    controller.silderIndex.value = index;
                                  }),
                              itemCount: controller.onboardingTwoModelObj.value
                                  .sliderlistensouItemList.value.length,
                              itemBuilder: (context, index, realIndex) {
                                SliderlistensouItemModel model = controller
                                    .onboardingTwoModelObj
                                    .value
                                    .sliderlistensouItemList
                                    .value[index];
                                return SliderlistensouItemWidget(model);
                              }))),
                      Obx(() => Container(
                          height: getVerticalSize(8),
                          margin: getMargin(top: 47),
                          child: AnimatedSmoothIndicator(
                              activeIndex: controller.silderIndex.value,
                              count: controller.onboardingTwoModelObj.value
                                  .sliderlistensouItemList.value.length,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                  spacing: 8,
                                  activeDotColor: ColorConstant.whiteA700,
                                  dotColor: ColorConstant.whiteA70087,
                                  dotHeight: getVerticalSize(8),
                                  dotWidth: getHorizontalSize(8))))),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_next".tr,
                          margin: getMargin(top: 56),
                          variant: ButtonVariant.White,
                          fontStyle: ButtonFontStyle.AeonikBold18DeeppurpleA400,
                          onTap: () {
                            onTapNext();
                          }),
                      Padding(
                          padding: getPadding(top: 35),
                          child: Text("lbl_skip".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtAeonikBold18))
                    ]))));
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.onboardingThreeScreen,
    );
  }
}
