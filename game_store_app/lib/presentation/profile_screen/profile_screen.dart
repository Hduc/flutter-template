import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../widgets/app_bar/custum_bottom_bar_controller.dart';
import '../../widgets/custom_button.dart';
import '../language_screen/models/languge.dart';
import '../payment_method_screen/controller/payment_method_controller.dart';
import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(

                                  width: double.maxFinite,
                                  child: Container(
                                      padding: getPadding(
                                          left: 181,
                                          top: 16,
                                          right: 181,
                                          bottom: 16),
                                      decoration:
                                          AppDecoration.outlineBluegray50,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(bottom: 7),
                                                child: Text("lbl_profile".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtAeonikBold21))
                                          ]))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgEllipse25100x100,
                                  height: getSize(100),
                                  width: getSize(100),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(50)),
                                  margin: getMargin(top: 24)),
                              Padding(
                                  padding: getPadding(top: 9),
                                  child: Text("lbl_john_abram".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtAeonikBold19)),
                              Container(
                                  margin:
                                      getMargin(left: 20, top: 23, right: 20),
                                  padding: getPadding(
                                      left: 16, top: 15, right: 16, bottom: 15),
                                  decoration: AppDecoration.fillBlue50.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 2),
                                            child: Text("lbl_level_4".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtHeadline)),
                                        SizedBox(height: getVerticalSize(16),),
                                        GFProgressBar(
                                          percentage: 0.5,
                                          backgroundColor : ColorConstant.whiteA700,
                                          progressBarColor: ColorConstant.lightBlueA700,
                                          padding:EdgeInsets.zero,
                                          lineHeight: getSize(16),
                                          radius: 20,
                                          child:  Text(
                                              "5",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.end,
                                              style:
                                              AppStyle.txtFootnoteGray60001),
                                        ),
//                                                                             ),
                                        Padding(
                                            padding: getPadding(top: 18),
                                            child: Text(
                                                "msg_2400_xp_until_level".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtBodyBlack900))
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20, top: 25),
                                      child: Text("lbl_personal_info".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtSubhead))),
                              GestureDetector(
                                  onTap: () {
                                    onTapProfile();
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 20, top: 16, right: 20),
                                      padding: getPadding(
                                          left: 16,
                                          top: 14,
                                          right: 16,
                                          bottom: 14),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(getHorizontalSize(20)),
                                          color: ColorConstant.whiteA700,
                                          boxShadow: [
                                            BoxShadow(offset: Offset(0, 6),
                                                blurRadius: 30,
                                                color: ColorConstant.black900.withOpacity(0.07))
                                          ]
                                      ),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgUserBlack900,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(
                                                    top: 1, bottom: 1)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 12),
                                                child: Text("lbl_my_profile".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        AppStyle.txtHeadline)),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowright,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(
                                                    top: 1, bottom: 1))
                                          ]))),
                              GetBuilder<PaymentMethodController>(
                                init: PaymentMethodController(),
                                builder:(controller) =>  GestureDetector(
                                    onTap: () {
                                      controller.setNavigationOfProfileScreen(true);
                                      onTapProfile1();
                                    },
                                    child: Container(
                                        margin: getMargin(
                                            left: 20, top: 16, right: 20),
                                        padding: getPadding(
                                            left: 16,
                                            top: 14,
                                            right: 16,
                                            bottom: 14),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(getHorizontalSize(20)),
                                            color: ColorConstant.whiteA700,
                                            boxShadow: [
                                              BoxShadow(offset: Offset(0, 6),
                                                  blurRadius: 30,
                                                  color: ColorConstant.black900.withOpacity(0.07))
                                            ]
                                        ),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant.imgClock,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  margin: getMargin(
                                                      top: 1, bottom: 1)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 12,),
                                                  child: Text(
                                                      "lbl_payment_method".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style:
                                                          AppStyle.txtHeadline)),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgArrowright,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  margin: getMargin(
                                                      top: 1, bottom: 1))
                                            ]))),
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20, top: 25),
                                      child: Text("lbl_general".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtSubhead))),
                              GestureDetector(
                                  onTap: () {
                                    onTapProfile2();
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 20, top: 20, right: 20),
                                      padding: getPadding(
                                          left: 16,
                                          top: 14,
                                          right: 16,
                                          bottom: 14),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(getHorizontalSize(20)),
                                          color: ColorConstant.whiteA700,
                                          boxShadow: [
                                            BoxShadow(offset: Offset(0, 6),
                                                blurRadius: 30,
                                                color: ColorConstant.black900.withOpacity(0.07))
                                          ]
                                      ),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgSettings,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(
                                                    top: 1, bottom: 1)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 12),
                                                child: Text("lbl_settings".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        AppStyle.txtHeadline)),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowright,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(
                                                    top: 1, bottom: 1))
                                          ]))),

                              GestureDetector(
                                  onTap: () {
                                    onTapProfile3();
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 20, top: 16, right: 20),
                                      padding: getPadding(
                                          left: 16,
                                          top: 14,
                                          right: 16,
                                          bottom: 14),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(getHorizontalSize(20)),
                                          color: ColorConstant.whiteA700,
                                          boxShadow: [
                                            BoxShadow(offset: Offset(0, 6),
                                                blurRadius: 30,
                                                color: ColorConstant.black900.withOpacity(0.07))
                                          ]
                                      ),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgIclaunguage,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(
                                                    top: 1, bottom: 1)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 12),
                                                child: Text("lbl_language".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        AppStyle.txtHeadline)),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowright,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(
                                                    top: 1, bottom: 1))
                                          ]))),
                              GetBuilder<CustomBottomBarController>(
                                init: CustomBottomBarController(),
                                builder:(controller) =>  Padding(
                                    padding: getPadding(top: 27),
                                    child: GestureDetector(
                                      onTap: (){

                                        showDialog(
                                          barrierDismissible: false,
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              insetPadding: EdgeInsets.zero,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(getHorizontalSize(20))),
                                              contentPadding: EdgeInsets.zero,
                                              content: Padding(
                                                padding: getPadding(all: 20),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Text("msg_are_you_logout".tr,
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle.txtAeonikBold21),
                                                    SizedBox(
                                                      height: getVerticalSize(0),
                                                    ),
                                                    Row(
                                                      children: [
                                                        CustomButton(
                                                            width: getSize(162),
                                                            height: getVerticalSize(48),
                                                            text: "lbl_no".tr,
                                                            fontStyle:
                                                            ButtonFontStyle.AeonikBold18LightblueA700,
                                                            variant: ButtonVariant.BlueWhite,
                                                            margin: getMargin(top: 44),
                                                            padding: ButtonPadding.PaddingAll13,
                                                            onTap: () {
                                                              Get.back();
                                                            }),
                                                        SizedBox(
                                                          width: getHorizontalSize(10),
                                                        ),
                                                        CustomButton(
                                                            width: getSize(162),
                                                            height: getVerticalSize(48),
                                                            text: "lbl_yes".tr,
                                                            margin: getMargin(top: 44),
                                                            padding: ButtonPadding.PaddingAll13,
                                                            onTap: () {
                                                              PrefUtils.setIsSignIn(true);
                                                              PrefUtils.setIsExploler(true);
                                                              controller.getIndex(0);
                                                              Get.offAllNamed(AppRoutes.loginScreen);
                                                            }),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: Text("lbl_logout".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtHeadlineRed500),
                                    )),
                              )
                            ])))),
          ));
  }


  onTapProfile() {
    Get.toNamed(
      AppRoutes.myProfileScreen,
    );
  }

  onTapProfile1() {
    Get.toNamed(

      AppRoutes.paymentMethodScreen,
    );
  }

  onTapProfile2() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }

  onTapProfile3() {
    Get.toNamed(
      AppRoutes.languageScreen,
    );
  }


}
