// ignore_for_file: deprecated_member_use

import '../../core/dataFile/data_file.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/onboarding_one_controller.dart';
import 'models/onboarding_one_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';

class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
  const OnboardingOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);
    final List<OnboardingOneModel> introList = DataFile.onBordData;

    return WillPopScope(
      onWillPop: () async {
        PrefUtils.closeApp();
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GetBuilder<OnboardingOneController>(builder: (controller) {
          return Stack(
            children: [
              PageView.builder(
                // physics: BouncingScrollPhysics(),
                onPageChanged: (value) {
                  controller.onChange(value);
                },
                controller: pageController,
                itemBuilder: (context, index) {
                  OnboardingOneModel modelIntro = introList[index];
                  return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(modelIntro.image!),
                            fit: BoxFit.cover)),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 0, left: 16, right: 16, bottom: 180),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            modelIntro.title!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF151515),
                              fontSize: 28.fSize,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 16.v),
                          Text(
                            modelIntro.description!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF151515),
                              fontSize: 17.fSize,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: introList.length,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      introList.length,
                      (index) {
                        return AnimatedContainer(
                          margin: EdgeInsets.only(left: 4.h, right: 4.h),
                          duration: const Duration(milliseconds: 300),
                          height: 7.v,
                          width: (index == controller.sliderIndex) ? 16.h : 7.h,
                          decoration: BoxDecoration(
                            borderRadius: index == controller.sliderIndex
                                ? BorderRadius.circular(16.h)
                                : BorderRadius.circular(100.h),
                            color: (index == controller.sliderIndex)
                                ? theme.colorScheme.primary
                                : Color(0xFF7C49DE).withOpacity(0.30),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.v),
                    child: CustomElevatedButton(
                      height: 56.v,
                      width: double.infinity,
                      buttonStyle: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            theme.colorScheme.primary),
                      ),
                      text: (controller.sliderIndex == introList.length - 1)
                          ? "Get started"
                          : "Next",
                      onPressed: controller.sliderIndex == introList.length - 1
                          ? () {
                              PrefUtils.setIntro(false);
                              Get.toNamed(
                                AppRoutes.logInWithDefualtScreen,
                              );
                            }
                          : () {
                              pageController.nextPage(
                                  duration: const Duration(milliseconds: 100),
                                  curve: Curves.bounceIn);
                            },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.v, bottom: 50.h),
                    child: InkWell(
                      onTap: () {
                        PrefUtils.setIntro(false);
                        Get.toNamed(
                          AppRoutes.logInWithDefualtScreen,
                        );
                      },
                      child: Text(
                        (controller.sliderIndex == introList.length - 1)
                            ? " "
                            : "Skip",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        }),
      ),
    );
    // return Scaffold(
    //     extendBody: true,
    //     extendBodyBehindAppBar: true,
    //     body: Container(
    //         width: SizeUtils.width,
    //         height: SizeUtils.height,
    //         decoration: BoxDecoration(
    //             color: appTheme.whiteA700,
    //             image: DecorationImage(
    //                 image: AssetImage(ImageConstant.imgOnboardingOne),
    //                 fit: BoxFit.cover)),
    //         child: Container(
    //             width: double.maxFinite,
    //             padding:
    //             EdgeInsets.symmetric(horizontal: 16.h, vertical: 59.v),
    //             child: Column(mainAxisSize: MainAxisSize.min, children: [
    //               CustomImageView(
    //                   imagePath: ImageConstant.imgGroupBlack90001,
    //                   height: 396.v,
    //                   width: 387.h),
    //               SizedBox(height: 44.v),
    //               _buildTrackYourSpendingSlider(),
    //               SizedBox(height: 27.v),
    //               Obx(() => SizedBox(
    //                   height: 7.v,
    //                   child: AnimatedSmoothIndicator(
    //                       activeIndex: controller.sliderIndex.value,
    //                       count: controller.onboardingOneModelObj.value
    //                           .trackyourspendingsliderItemList.value.length,
    //                       axisDirection: Axis.horizontal,
    //                       effect: ScrollingDotsEffect(
    //                           spacing: 6,
    //                           activeDotColor: theme.colorScheme.primary,
    //                           dotColor: theme.colorScheme.primary
    //                               .withOpacity(0.46),
    //                           dotHeight: 7.v,
    //                           dotWidth: 7.h)))),
    //               SizedBox(height: 24.v),
    //               CustomElevatedButton(
    //                   text: "lbl_next".tr,
    //                   onPressed: () {
    //                     onTapNext();
    //                   }),
    //               SizedBox(height: 19.v),
    //               GestureDetector(
    //                   onTap: () {
    //                     onTapTxtSkip();
    //                   },
    //                   child: Text("lbl_skip".tr,
    //                       style: theme.textTheme.bodyLarge)),
    //               SizedBox(height: 5.v)
    //             ]))));
  }

  /// Section Widget
  // Widget _buildTrackYourSpendingSlider() {
  //   return Padding(
  //       padding: EdgeInsets.symmetric(horizontal: 21.h),
  //       child: Obx(() => CarouselSlider.builder(
  //           options: CarouselOptions(
  //               height: 151.v,
  //               initialPage: 0,
  //               autoPlay: true,
  //               viewportFraction: 1.0,
  //               enableInfiniteScroll: false,
  //               scrollDirection: Axis.horizontal,
  //               onPageChanged: (index, reason) {
  //                 controller.sliderIndex.value = index;
  //               }),
  //           itemCount: controller.onboardingOneModelObj.value
  //               .trackyourspendingsliderItemList.value.length,
  //           itemBuilder: (context, index, realIndex) {
  //             TrackyourspendingsliderItemModel model = controller
  //                 .onboardingOneModelObj
  //                 .value
  //                 .trackyourspendingsliderItemList
  //                 .value[index];
  //             return TrackyourspendingsliderItemWidget(model);
  //           })));
  // }

  /// Navigates to the onboardingTwoScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.onboardingTwoScreen,
    );
  }

  /// Navigates to the onboardingThreeScreen when the action is triggered.
  onTapTxtSkip() {
    Get.toNamed(
      AppRoutes.onboardingThreeScreen,
    );
  }
}
