import 'package:flutter/services.dart';

import '../onboarding_one_screen/widgets/sliderplaygames_item_widget.dart';
import 'controller/onboarding_one_controller.dart';
import 'models/onboarding_one_model.dart';
import 'models/sliderplaygames_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
  OnboardingOneController onboardingOneController =
      Get.put(OnboardingOneController());
  List<OnboardingOneModel> onboarding = OnboardingData.onboardingData();
  PageController pageController = PageController();
  List<ButtonFontStyle> style = [
    ButtonFontStyle.AeonikBold18,
    ButtonFontStyle.AeonikBold18DeeppurpleA400,
    ButtonFontStyle.AeonikBold18Cyan400,
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        closeApp();
        return false;
      },
      child: Scaffold(
          backgroundColor: ColorConstant.orange400,
          body: Stack(
            children: [
              PageView.builder(
                onPageChanged: (value) {
                  onboardingOneController.setCurrentPage(value);
                },
                itemCount: onboarding.length,
                controller: pageController,
                itemBuilder: (context, index) {
                  OnboardingOneModel data = onboarding[index];
                  return Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(data.image!), fit: BoxFit.fill)),
                  );
                },
              ),
              GetBuilder<OnboardingOneController>(
                init: OnboardingOneController(),
                builder: (controller) => Padding(
                  padding: getPadding(bottom: 58,left: 20,right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(onboarding.length, (index) {
                            return AnimatedContainer(
                              margin: getMargin(left: 4,right: 4),
                              duration: const Duration(milliseconds: 300),
                              height: getSize(8),
                              width: getSize(8),
                              decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                  color: (index == controller.currentPage)
                                      ? ColorConstant.whiteA700
                                      : ColorConstant.whiteA700.withOpacity(0.5)),
                            );
                          })),
                      CustomButton(
                          height: getVerticalSize(56),
                          text:controller.currentPage ==
                              onboarding.length - 1 ?"Get started":"lbl_next".tr,
                          margin: getMargin(top: 56),
                          variant: ButtonVariant.White,
                          fontStyle: style[controller.currentPage],
                          onTap: controller.currentPage ==
                              onboarding.length - 1?onTapGetstarted:() {
                            pageController.nextPage(
                                duration: const Duration(milliseconds: 100),
                                curve: Curves.bounceIn);
                          }),
                      Padding(
                        padding: getPadding(top: 32),
                        child: GestureDetector(
                          onTap: onTapGetstarted,
                          child: Text(controller.currentPage ==
                              onboarding.length - 1?"":"lbl_skip".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtAeonikBold18),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
          ),
    );
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.onboardingTwoScreen,
    );
  }
  closeApp() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      SystemNavigator.pop();
    });
  }

  onTapGetstarted() {
    PrefUtils.setIsIntro(false);
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
