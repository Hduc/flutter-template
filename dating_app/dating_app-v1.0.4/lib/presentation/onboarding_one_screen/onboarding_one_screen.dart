import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/onboarding_one_screen/top_view.dart';

import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../data/pref_data.dart';
import 'controller/onboarding_one_controller.dart';


class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
  const OnboardingOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = PageController(
      initialPage: 0,

    );
    mediaQueryData = MediaQuery.of(context);

    return GetBuilder<OnboardingOneController>(builder: (controller) {
      return Scaffold(
        backgroundColor: controller.index<=0?Color(0xFFE8E3FF):controller.index==2?Color(0xFFD3EFFF):Color(0xFFE9DFF9),
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: PageView.builder(

                physics: BouncingScrollPhysics(),

                controller: pageController,
                itemCount: 3,
                onPageChanged: (value) {
                  controller.changeScreen(value);
                },
                itemBuilder: (context, index) {
                  return TopView(
                    img: controller.onboardingView[index].image,
                    // color: controller.changColor(),
                  );
                },
              ),
            ),
            Container(
                margin: getMargin(top: getSize(24)),
                padding: getPadding(left: getSize(16), top: getSize(38), right: getSize(16), bottom: getSize(34)),
                decoration: AppDecoration.outline1
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL33),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: getSize(10)),
                        child: Text(controller.index==0?'Building relationships on trust and compatibility':controller.index==1?'You can share, chat and video call with your match':'Don t wait anymore, find your soulmate right now!',style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: getFontSize(24),

                        ),textAlign: TextAlign.center,)
                      ),
                      SizedBox(
                        height: getSize(16),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(bottom: getSize(25)),
                        child: Text('Your love life, our expertise”finding love is a journey, let us guide you',style:TextStyle(
                          fontSize: getFontSize(16),
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ) ,textAlign: TextAlign.center,),
                      ),
                      DotsIndicator(
                        dotsCount: 3,
                        position: controller.index,
                        decorator: DotsDecorator(
                          size:  Size.square(getSize(8)),
                          // activeSize: const Size( 9.0),
                          spacing: EdgeInsets.only(right: getSize(6)),
                          activeColor: Colors.black,
                          color: Colors.grey,
                          activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                        ),
                      ),
                     controller.index>1? CustomElevatedButton(
                         text: "lbl_get_started".tr,
                         margin: getMargin(top: getSize(36), bottom: getSize(33)),
                         buttonStyle: CustomButtonStyles.fillPrimary
                             .copyWith(
                             fixedSize:
                             MaterialStateProperty.all<Size>(
                                 Size(double.maxFinite,
                                     getSize(54)))),
                         buttonTextStyle:
                         theme.textTheme.titleMedium!,
                         onTap: () {
                           PrefData.setIntro(false);
                           Get.toNamed(
                             AppRoutes.logInScreen,
                           );
                         }
                         ): Column(
                        children: [
                          CustomElevatedButton(
                              text: "lbl_next".tr,
                              margin: getMargin(top: getSize(32)),
                              buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(double.maxFinite, getSize(54)))),
                              buttonTextStyle: theme.textTheme.titleMedium!,
                              onTap: () {
                                if(controller.index ==
                                    controller.onboardingView.length - 1){


                                }
                                else{
                                  pageController.nextPage(
                                      duration: const Duration(milliseconds: 100),
                                      curve: Curves.bounceIn);
                                }

                              }
                              ),
                          GestureDetector(
                              onTap: () {
                                PrefData.setIntro(false);
                                Get.toNamed(
                                  AppRoutes.logInScreen,
                                );
                              },
                              child: Padding(
                                  padding: getPadding(top: getSize(19)),
                                  child: Text("lbl_skip".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.titleSmallBlack900)))
                        ],
                      ),

                    ])),
          ],
        ),

      );
    },init: OnboardingOneController(),);
  }




}
