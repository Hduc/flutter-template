import '../rate_us_screen/rate_us_screen.dart';
import 'controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_text_form_field.dart';

class SettingsScreen extends GetWidget<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return true;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.whiteA700,
          appBar: CustomAppBar(
              height: getVerticalSize(66),
              leadingWidth: 44,
              leading: AppbarImage(
                  height: getSize(24),
                  width: getSize(24),
                  svgPath: ImageConstant.imgArrowleftBlack900,
                  margin: getMargin(left: 20, top: 17, bottom: 25),
                  onTap: onTapArrowleft21),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_settings".tr),
              styleType: Style.bgFillWhiteA700),
          body: SafeArea(
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 24, right: 20, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoutes.yourCardScreen);
                        },
                        child: Container(
                            padding: getPadding(
                                left: 16, top: 14, right: 16, bottom: 14),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(getHorizontalSize(20)),
                                color: ColorConstant.whiteA700,
                                boxShadow: [
                                 BoxShadow(offset: Offset(0, 6),
                                     blurRadius: 30,
                                     color: ColorConstant.black900.withOpacity(0.07))
                                ]
                            ),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgClock,
                                  height: getSize(24),
                                  width: getSize(24),
                                  margin: getMargin(top: 1, bottom: 1)),
                              Padding(
                                  padding: getPadding(left: 12),
                                  child: Text("lbl_my_card".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtHeadline))
                            ])),
                      ),
                      SizedBox(height: getVerticalSize(16),),
                      GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoutes.privacyPolicyScreen);
                        },
                        child: Container(
                            padding: getPadding(
                                left: 16, top: 14, right: 16, bottom: 14),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(getHorizontalSize(20)),
                                color: ColorConstant.whiteA700,
                                boxShadow: [
                                 BoxShadow(offset: Offset(0, 6),
                                     blurRadius: 30,
                                     color: ColorConstant.black900.withOpacity(0.07))
                                ]
                            ),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgLockBlack900,
                                  height: getSize(24),
                                  width: getSize(24),
                                  margin: getMargin(top: 1, bottom: 1)),
                              Padding(
                                  padding: getPadding(left: 12),
                                  child: Text("lbl_privacy_policy".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtHeadline))
                            ])),
                      ),
                     SizedBox(height: getVerticalSize(16),),
                      GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoutes.feedBackScreen);
                        },
                        child: Container(
                            padding: getPadding(
                                left: 16, top: 14, right: 16, bottom: 14),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(getHorizontalSize(20)),
                                color: ColorConstant.whiteA700,
                                boxShadow: [
                                 BoxShadow(offset: Offset(0, 6),
                                     blurRadius: 30,
                                     color: ColorConstant.black900.withOpacity(0.07))
                                ]
                            ),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgIcFeedback,
                                  height: getSize(24),
                                  width: getSize(24),
                                  margin: getMargin(top: 1, bottom: 1)),
                              Padding(
                                  padding: getPadding(left: 12),
                                  child: Text("lbl_feedback".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtHeadline))
                            ])),
                      ),
                     SizedBox(height: getVerticalSize(16),),
                      GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoutes.helpAndSupportScreen);
                        },
                        child: Container(
                            padding: getPadding(
                                left: 16, top: 14, right: 16, bottom: 14),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(getHorizontalSize(20)),
                                color: ColorConstant.whiteA700,
                                boxShadow: [
                                 BoxShadow(offset: Offset(0, 6),
                                     blurRadius: 30,
                                     color: ColorConstant.black900.withOpacity(0.07))
                                ]
                            ),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgQuestion,
                                  height: getSize(24),
                                  width: getSize(24),
                                  margin: getMargin(top: 1, bottom: 1)),
                              Padding(
                                  padding: getPadding(left: 12),
                                  child: Text("lbl_help".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtHeadline))
                            ])),
                      ),

                      GestureDetector(
                        onTap: (){

                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                insetPadding: EdgeInsets.all(20),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                contentPadding:
                                EdgeInsets.zero,
                                content: RateUsScreen(),
                              );
                            },
                          );



                          // Get.toNamed(AppRoutes.rateUsScreen);
                        },
                        child: Container(
                            margin: getMargin(top: 16, bottom: 5),
                            padding: getPadding(
                                left: 18, top: 16, right: 18, bottom: 16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(getHorizontalSize(20)),
                                color: ColorConstant.whiteA700,
                                boxShadow: [
                                 BoxShadow(offset: Offset(0, 6),
                                     blurRadius: 30,
                                     color: ColorConstant.black900.withOpacity(0.07))
                                ]
                            ),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgStar1,
                                  height: getSize(20),
                                  width: getSize(20),
                                  radius:
                                      BorderRadius.circular(getHorizontalSize(2)),
                                  margin: getMargin(top: 1, bottom: 1)),
                              Padding(
                                  padding: getPadding(left: 14,),
                                  child: Text("lbl_rate_us".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtHeadline))
                            ])),
                      )
                    ])),
          )),
    );
  }

  onTapArrowleft21() {
    Get.back();
  }
}
