import '../onboarding_six_screen/widgets/sliderwelcometoinvest_one_item_widget.dart';
import 'controller/onboarding_six_controller.dart';
import 'models/onboarding_six_model.dart';
import 'models/sliderwelcometoinvest_one_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:investment_app/domain/googleauth/google_auth_helper.dart';

/*
Text(
            "msg_the_best_app_to".tr,
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtInterRegular16.copyWith(
              height: getVerticalSize(
                1.24,
              ),
            ),
          ),
 */
class OnboardingSixScreen extends GetWidget<OnboardingSixController> {
  PageController pageController = PageController();
  OnboardingSixController onboardingSixController = Get.put(OnboardingSixController());
  List<SliderwelcometoinvestOneItemModel> sliderPage = OnboardingSixModel.getSliderPageData();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: GetBuilder<OnboardingSixController>(
          init: OnboardingSixController(),
          builder: (onboardingSixController) => SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      PageView.builder(
                        onPageChanged: (value) {
                          onboardingSixController.setIndex(value);
                        },

                        controller: pageController,
                        scrollDirection: Axis.horizontal,
                        itemCount: sliderPage.length,itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SizedBox(height: getVerticalSize(index==0?24:0),),
                            CustomImageView(
                              imagePath: sliderPage[index].image,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: sliderPage[index].title,
                                    style: TextStyle(
                                      color: ColorConstant.gray800,
                                      fontSize: getFontSize(
                                        24,
                                      ),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      height: getVerticalSize(
                                        1.03,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: sliderPage[index].highlightTitle,
                                    style: TextStyle(
                                      color: ColorConstant.blue700,
                                      fontSize: getFontSize(
                                        24,
                                      ),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      height: getVerticalSize(
                                        1.03,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ).paddingOnly(top:getVerticalSize(41)),
                            Container(
                              width: getHorizontalSize(
                                285.00,
                              ),
                              margin: getMargin(
                                top: 9,
                              ),
                              child: Text(
                                sliderPage[index].subtitle!,
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtInterRegular16.copyWith(
                                  height: getVerticalSize(
                                    1.5,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ).paddingOnly(top: getVerticalSize(14));
                      },),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(sliderPage.length, (index) {
                                    return AnimatedContainer(
                                      duration: const Duration(milliseconds: 300),
                                      height: getVerticalSize(10),
                                      width: getHorizontalSize(
                                          onboardingSixController.currentPage ==
                                              index
                                              ? 20
                                              : 8),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6),
                                          color: (index ==
                                              onboardingSixController
                                                  .currentPage)
                                              ? ColorConstant.blue700
                                              : ColorConstant.gray200),
                                    ).paddingSymmetric(horizontal: getHorizontalSize(4));
                                  })),
                              SizedBox(height: getVerticalSize(32)),
                             Padding(
                                  padding: getPadding(top: 0),
                                  // padding: getPadding(top: 32),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CustomButton(
                                            onTap: () {
                                              // PrefUtils.setIsIntro(false);
                                              Get.toNamed(AppRoutes.loginScreen);
                                            },
                                            height: 57,
                                            width: 159,
                                            text: "lbl_login".tr,
                                            variant: ButtonVariant.OutlineBlue700,
                                            fontStyle: ButtonFontStyle.InterBold16),
                                        CustomButton(
                                            onTap: () {
                                              // PrefUtils.setIsIntro(false);
                                              Get.toNamed(AppRoutes.registerNameScreen);
                                            },
                                            height: 57,
                                            width: 159,
                                            text: "lbl_register".tr,
                                            margin: getMargin(left: 8))
                                      ])),

                              SizedBox(height: getVerticalSize(16),),
                           GestureDetector(
                                  onTap: () {
                                    onTapGoogle();
                                  },
                                  child: Container(
                                      margin: getMargin(left: 24, right: 24, bottom: 0),
                                      padding:
                                      getPadding(left: 68, top: 16, right: 68, bottom: 16),
                                      decoration: AppDecoration.outlineGray200.copyWith(
                                          borderRadius: BorderRadiusStyle.circleBorder28),
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant.imgGoogle1,
                                                height: getSize(20.00),
                                                width: getSize(20.00),
                                                margin: getMargin(top: 1, bottom: 1)),
                                            Expanded(
                                              child: Padding(
                                                  padding: getPadding(left: 20, top: 3),
                                                  child: Text("msg_sign_in_with_google".tr,
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle.txtInterMedium16
                                                          .copyWith(height: getVerticalSize(1.24)))),
                                            )
                                          ])))

                              // CustomButton(
                              //   fontStyle: ButtonFontStyle.PurpleButton,
                              //   onTap: (){
                              //     onbordingScreenOneController.initialPage ==
                              //         pages.length - 1
                              //         ?PrefUtils.setIsIntro(false):SizedBox();
                              //     onbordingScreenOneController.initialPage ==
                              //         pages.length - 1
                              //         ?
                              //     Get.toNamed(AppRoutes.homeContainerScreen):pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.linear);
                              //   },
                              //   height:56,
                              //   width: 374,
                              //   buttonColor: ColorConstant.purpleButton,
                              //
                              //   text:  onbordingScreenOneController.initialPage ==
                              //       pages.length - 1
                              //       ?"Get Started":'Next',
                              //
                              // )

                            ],
                          ).paddingOnly(top: getVerticalSize(0))

                        ],
                      ).paddingOnly(top: getVerticalSize(30),bottom: getVerticalSize(8)),
                    ],
                  ),
                )
              ],
            ),





































        ),
        ));



         /* Container(
              width: size.width,
              padding: getPadding(left: 7, top: 16, right: 7, bottom: 16),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgInvestment1,
                    height: getSize(360.00),
                    width: getSize(360.00),
                    margin: getMargin(top: 53)),
                Padding(
                    padding: getPadding(top: 16),
                    child: Obx(() => CarouselSlider.builder(
                        options: CarouselOptions(
                            height: getVerticalSize(85.00),
                            initialPage: 0,
                            autoPlay: true,
                            viewportFraction: 1.0,
                            enableInfiniteScroll: false,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) {
                              controller.silderIndex.value = index;
                            }),
                        itemCount: controller.onboardingSixModelObj.value
                            .sliderwelcometoinvestOneItemList.length,
                        itemBuilder: (context, index, realIndex) {
                          SliderwelcometoinvestOneItemModel model = controller
                              .onboardingSixModelObj
                              .value
                              .sliderwelcometoinvestOneItemList[index];
                          return SliderwelcometoinvestOneItemWidget(model);
                        }))),
                Obx(() => Container(
                    height: getVerticalSize(8.00),
                    margin: getMargin(top: 32),
                    child: AnimatedSmoothIndicator(
                        activeIndex: controller.silderIndex.value,
                        count: controller.onboardingSixModelObj.value
                            .sliderwelcometoinvestOneItemList.length,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                            spacing: 8,
                            activeDotColor: ColorConstant.blue700,
                            dotColor: ColorConstant.gray200,
                            dotHeight: getVerticalSize(8.00),
                            dotWidth: getHorizontalSize(8.00))))),
                Padding(
                    padding: getPadding(top: 20),
                    // padding: getPadding(top: 32),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                            onTap: () => Get.toNamed(AppRoutes.loginScreen),
                              height: 57,
                              width: 159,
                              text: "lbl_login".tr,
                              variant: ButtonVariant.OutlineBlue700,
                              fontStyle: ButtonFontStyle.InterBold16),
                          CustomButton(
                              onTap: () => Get.toNamed(AppRoutes.registerNameScreen),
                              height: 57,
                              width: 159,
                              text: "lbl_register".tr,
                              margin: getMargin(left: 8))
                        ]))
              ])),
        ),
        bottomNavigationBar: GestureDetector(
            onTap: () {
              onTapGoogle();
            },
            child: Container(
                margin: getMargin(left: 24, right: 24, bottom: 40),
                padding:
                    getPadding(left: 68, top: 16, right: 68, bottom: 16),
                decoration: AppDecoration.outlineGray200.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder28),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgGoogle1,
                          height: getSize(20.00),
                          width: getSize(20.00),
                          margin: getMargin(top: 1, bottom: 1)),
                      Padding(
                          padding: getPadding(left: 20, top: 3),
                          child: Text("msg_sign_in_with_google".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium16
                                  .copyWith(height: getVerticalSize(1.24))))
                    ]))));*/
  }

  onTapGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  Widget genratePage() {
    return GetBuilder<OnboardingSixController>(
      init: OnboardingSixController(),
      builder:(onboardingSixController) =>  Container(

        child: PageView.builder(

          onPageChanged: (value) {
            onboardingSixController.setIndex(value);
          },

          controller: pageController,
          scrollDirection: Axis.horizontal,
          itemCount: sliderPage.length,itemBuilder: (context, index) {
          return Column(
            children: [
              CustomImageView(
                imagePath: sliderPage[index].image,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: sliderPage[index].title,
                      style: TextStyle(
                        color: ColorConstant.gray800,
                        fontSize: getFontSize(
                          24,
                        ),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: getVerticalSize(
                          1.03,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: sliderPage[index].highlightTitle,
                      style: TextStyle(
                        color: ColorConstant.blue700,
                        fontSize: getFontSize(
                          24,
                        ),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: getVerticalSize(
                          1.03,
                        ),
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ).paddingOnly(top: getVerticalSize(0));
        },),
      ).paddingOnly(top: getVerticalSize(0)),
    );
  }
}






