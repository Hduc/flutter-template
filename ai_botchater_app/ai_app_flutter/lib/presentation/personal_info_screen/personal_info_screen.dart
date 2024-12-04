import 'controller/personal_info_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/widgets/app_bar/appbar_image.dart';
import 'package:ai_app_flutter/widgets/app_bar/appbar_title.dart';
import 'package:ai_app_flutter/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PersonalInfoScreen extends GetWidget<PersonalInfoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(65),
                leadingWidth: 44,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 20, top: 21, bottom: 20),
                    onTap: () {
                      onTapArrowleft47();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_personal_info".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgEdit,
                      margin:
                          getMargin(left: 20, top: 21, right: 20, bottom: 20),
                      onTap: () {
                        navigateEditProfile();
                      })
                ],
                styleType: Style.bgFillWhiteA700),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: Constant.imagePath+"user.png",
                      height: getVerticalSize(100),
                      width: getVerticalSize(100),
                      alignment: Alignment.center,
                      margin: getMargin(top: 24)),
                  Container(
                    width: double.maxFinite,
                      margin: getMargin(top: 48,left: 20,right: 20),
                      padding: getPadding(
                          left: 16, top: 12, right: 16, bottom: 12),
                      decoration: AppDecoration.fillGray100.copyWith(
                          borderRadius:
                              BorderRadiusStyle.roundedBorder16),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("lbl_first_name".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtAirbnbCerealWLt14Black900),
                            Padding(
                                padding: getPadding(top: 8),
                                child: Text("lbl_bessie".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtBody.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.16))))
                          ])),
                  Container(
                    width: double.maxFinite,
                      margin: getMargin(top: 16,left: 20,right: 20),
                      padding: getPadding(
                          left: 16, top: 12, right: 16, bottom: 12),
                      decoration: AppDecoration.fillGray100.copyWith(
                          borderRadius:
                              BorderRadiusStyle.roundedBorder16),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("lbl_last_name".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtAirbnbCerealWLt14Black900),
                            Padding(
                                padding: getPadding(top: 8),
                                child: Text("lbl_cooper".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtBody.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.16))))
                          ])),
                  Container(
                      width: double.maxFinite,
                      margin: getMargin(top: 16, left: 20, right: 20),
                      padding: getPadding(
                          left: 16, top: 12, right: 16, bottom: 12),
                      decoration: AppDecoration.fillGray100.copyWith(
                          borderRadius:
                              BorderRadiusStyle.roundedBorder16),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("lbl_email_address".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtAirbnbCerealWLt14Black900),
                            Padding(
                                padding: getPadding(top: 8),
                                child: Text(
                                    "msg_bessiecooper_gmail_com".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtBody.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.16))))
                          ]))
                ])));
  }

  onTapArrowleft47() {
    Get.back();
  }

  navigateEditProfile() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }
}
