import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

import 'controller/security_enable_controller.dart';

class SecurityEnableScreen extends GetWidget<SecurityEnableController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(81),
            leadingWidth: 42,
            leading: AppbarImage(
                height: getVerticalSize(24),
                width: getHorizontalSize(26),
                svgPath: ImageConstant.imgArrowleft,
                margin: getMargin(left: 16, top: 28, bottom: 28),
                onTap: () {
                  onTapArrowleft40();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_security".tr),
            styleType: Style.bgFillWhiteA700),
        body: SafeArea(
          child: Container(
              width: double.maxFinite,
              padding: getPadding(left: 16, top: 28, right: 16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("lbl_remember_me".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtHeadline),
                          Obx(() => Container(
                                height: getVerticalSize(30),
                                width: getVerticalSize(40),
                                child: FittedBox(
                                  child: CupertinoSwitch(
                                      activeColor: ColorConstant.pink800,
                                      value:
                                          controller.isSelectedSwitch.value,
                                      onChanged: (value) {
                                        controller.isSelectedSwitch.value =
                                            value;
                                      }),
                                ),
                              ))
                        ]),
                    Padding(
                        padding: getPadding(top: 30),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("lbl_face_id".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtHeadline),
                              Obx(() => Container(
                                    height: getVerticalSize(30),
                                    width: getVerticalSize(40),
                                    child: FittedBox(
                                      child: CupertinoSwitch(
                                          activeColor: ColorConstant.pink800,
                                          value: controller
                                              .isSelectedSwitch1.value,
                                          onChanged: (value) {
                                            controller.isSelectedSwitch1
                                                .value = value;
                                          }),
                                    ),
                                  ))
                            ])),
                    Padding(
                        padding: getPadding(top: 30),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("lbl_biometric_id".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtHeadline),
                              Obx(() => Container(
                                    height: getVerticalSize(30),
                                    width: getVerticalSize(40),
                                    child: FittedBox(
                                      child: CupertinoSwitch(
                                          activeColor: ColorConstant.pink800,
                                          value: controller
                                              .isSelectedSwitch2.value,
                                          onChanged: (value) {
                                            controller.isSelectedSwitch2
                                                .value = value;
                                          }),
                                    ),
                                  ))
                            ])),
                    Padding(
                        padding: getPadding(top: 30),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("msg_google_authenticator".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtHeadline),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrowright,
                                  height: getSize(24),
                                  width: getSize(24))
                            ])),
                    CustomButton(
                        onTap: () {
                          Get.toNamed(AppRoutes.forgetPassword1Screen);
                        },
                        height: getVerticalSize(53),
                        text: "lbl_change_password".tr,
                        margin: getMargin(top: 40),
                        variant: ButtonVariant.FillPink50,
                        fontStyle: ButtonFontStyle.SFProTextBold18Pink800)
                  ])),
        ));
  }

  onTapArrowleft40() {
    Get.back();
  }
}
