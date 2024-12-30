import '../onboarding_three_screen/widgets/slidergetawards_item_widget.dart';
import 'controller/onboarding_three_controller.dart';
import 'models/slidergetawards_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingThreeScreen extends GetWidget<OnboardingThreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.cyan400,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 79, right: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgCrown1,
                          height: getSize(379),
                          width: getSize(379)),
                      Padding(
                          padding: getPadding(left: 28, top: 33, right: 27),
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
                              itemCount: controller.onboardingThreeModelObj
                                  .value.slidergetawardsItemList.value.length,
                              itemBuilder: (context, index, realIndex) {
                                SlidergetawardsItemModel model = controller
                                    .onboardingThreeModelObj
                                    .value
                                    .slidergetawardsItemList
                                    .value[index];
                                return SlidergetawardsItemWidget(model);
                              }))),
                      Obx(() => Container(
                          height: getVerticalSize(8),
                          margin: getMargin(top: 47),
                          child: AnimatedSmoothIndicator(
                              activeIndex: controller.silderIndex.value,
                              count: controller.onboardingThreeModelObj.value
                                  .slidergetawardsItemList.value.length,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                  spacing: 8,
                                  activeDotColor: ColorConstant.whiteA700,
                                  dotColor: ColorConstant.whiteA70087,
                                  dotHeight: getVerticalSize(8),
                                  dotWidth: getHorizontalSize(8))))),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_get_started".tr,
                          margin: getMargin(top: 56, bottom: 5),
                          variant: ButtonVariant.White,
                          fontStyle: ButtonFontStyle.AeonikBold18Cyan400,
                          onTap: () {
                            onTapGetstarted();
                          })
                    ]))));
  }

  onTapGetstarted() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
