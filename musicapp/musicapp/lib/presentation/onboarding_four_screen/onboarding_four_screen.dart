import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/custom_elevated_button.dart';

import 'controller/onboarding_four_controller.dart';
import 'models/onboarding_four_model.dart';

class OnboardingFourScreen extends StatefulWidget {
  const OnboardingFourScreen({super.key});

  @override
  State<OnboardingFourScreen> createState() => _OnboardingFourScreenState();
}

class _OnboardingFourScreenState extends State<OnboardingFourScreen> {
  OnboardingFourController onboardingFourController =
      Get.put(OnboardingFourController());

  @override
  void initState() {
    setSafeAreaColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          closeApp();
          return true;
        },
        child: Scaffold(

          backgroundColor: theme.colorScheme.primary,
          body: GetBuilder<OnboardingFourController>(
            init: OnboardingFourController(),
            builder: (controller) => Stack(
              children: [
                PageView.builder(
                  controller: controller.pageController,
                  onPageChanged: (value) {
                    controller.setCurrentPage(value);
                  },
                  itemCount: controller.onboarding.length,
                  itemBuilder: (context, index) {
                    OnboardingData data = controller.onboarding[index];
                    return Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: appTheme.bgColor,
                          image: DecorationImage(
                              image: AssetImage(PrefUtils().getThemeData()=="primary"?data.image!:data.imageDark!),
                              fit: BoxFit.fill)),
                      child: Padding(
                        padding:
                            getPadding(left: 20, right: 20, bottom: 237),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // CustomImageView(
                            //   imagePath: data.image,
                            //   height: getSize(388),
                            //   fit: BoxFit.fill,
                            // ),
                            Padding(
                                padding: getPadding(top: 76),
                                child: Text(data.title!,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.displaySmall)),
                            Container(
                                width: getHorizontalSize(335),
                                margin:
                                    getMargin(left: 26, top: 12, right: 26),
                                child: Text("msg_stream_your_favorite".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodyLarge)),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                Padding(
                  padding:
                      getPadding(left: 20, right: 20, top: 16, bottom: 56),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      controller.currentPage ==
                              controller.onboarding.length - 1
                          ? SizedBox()
                          : Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    PrefUtils.setIsIntro(false);
                                    onTapTxtSkip();
                                  },
                                  child: Text("lbl_skip".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.bodyLarge))),
                      Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                  controller.onboarding.length, (index) {
                                return AnimatedContainer(
                                  margin: getMargin(left: 4, right: 4),
                                  duration:
                                      const Duration(milliseconds: 300),
                                  height: getSize(8),
                                  width: getSize(8),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          (index == controller.currentPage)
                                              ? appTheme.deepPurpleA200
                                              : appTheme.gray300),
                                );
                              })),
                          SizedBox(
                            height: getVerticalSize(64),
                          ),
                          CustomElevatedButton(
                              text: controller.currentPage ==
                                      controller.onboarding.length - 1
                                  ? "Get started"
                                  : "lbl_next".tr,
                              buttonStyle: ButtonThemeHelper
                                  .fillDeeppurpleA200
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(
                                              Size(double.maxFinite,
                                                  getVerticalSize(54)))),
                              buttonTextStyle:
                                  TextThemeHelper.titleMediumPrimary_1,
                              onTap: controller.currentPage ==
                                      controller.onboarding.length - 1
                                  ? () {
                                      PrefUtils.setIsIntro(false);
                                      Get.toNamed(
                                        AppRoutes.loginScreen,
                                      );
                                    }
                                  : () {
                                      controller.pageController.nextPage(
                                          duration: const Duration(
                                              milliseconds: 100),
                                          curve: Curves.bounceIn);
                                    }),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.onboardingFiveScreen,
    );
  }

  onTapTxtSkip() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
