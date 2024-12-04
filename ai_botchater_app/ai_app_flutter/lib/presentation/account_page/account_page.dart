import 'package:ai_app_flutter/presentation/log_out_popup_dialog/controller/log_out_popup_controller.dart';
import 'package:ai_app_flutter/presentation/log_out_popup_dialog/log_out_popup_dialog.dart';

import 'controller/account_controller.dart';
import 'models/account_model.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AccountPage extends StatelessWidget {
  AccountController controller = Get.put(AccountController(AccountModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  padding: getPadding(top: 14, bottom: 39),
                  decoration: AppDecoration.fillWhiteA700,
                  child: Text("lbl_account".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtAirbnbCerealWBd24)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: getPadding(left: 20),
                      child: Text("lbl_general".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAirbnbCerealWMd22))),
              GestureDetector(
                  onTap: () {
                    navigatePersonalInfo();
                  },
                  child: Container(
                      margin: getMargin(left: 20, top: 16, right: 20),
                      padding: getPadding(all: 16),
                      decoration: AppDecoration.fillGray100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgIcuser,
                                height: getSize(24),
                                width: getSize(24)),
                            Padding(
                                padding: getPadding(left: 16),
                                child: Text("lbl_personal_info".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtBody.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.16)))),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: getSize(24),
                                width: getSize(24))
                          ]))),
              Container(
                  margin: getMargin(left: 20, top: 16, right: 20),
                  padding: getPadding(left: 16, top: 16, right: 16, bottom: 16),
                  decoration: AppDecoration.fillGray100.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                            svgPath: Constant.imagePath + "security.svg",
                            height: getSize(24),
                            width: getSize(24)),
                        Padding(
                            padding: getPadding(left: 16),
                            child: Text("Change password",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtBody.copyWith(
                                    letterSpacing: getHorizontalSize(0.16)))),
                        Spacer(),
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowright,
                            height: getSize(24),
                            width: getSize(24))
                      ])),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: getPadding(left: 20, top: 30),
                      child: Text("lbl_about".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAirbnbCerealWMd22))),
              GestureDetector(
                  onTap: () {
                    navigateFAQ();
                  },
                  child: Container(
                      margin: getMargin(left: 20, top: 16, right: 20),
                      padding: getPadding(all: 16),
                      decoration: AppDecoration.fillGray100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgIchelp,
                                height: getSize(24),
                                width: getSize(24)),
                            Padding(
                                padding: getPadding(left: 16),
                                child: Text("lbl_faq_s".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtBody.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.16)))),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: getSize(24),
                                width: getSize(24))
                          ]))),
              GestureDetector(
                  onTap: () {
                    navigatePrivacyPolicy();
                  },
                  child: Container(
                      margin: getMargin(left: 20, top: 16, right: 20),
                      padding: getPadding(all: 16),
                      decoration: AppDecoration.fillGray100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgIcprivacypolicy,
                                height: getSize(24),
                                width: getSize(24)),
                            Padding(
                                padding: getPadding(left: 16),
                                child: Text("lbl_privacy_policy".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtBody.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.16)))),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: getSize(24),
                                width: getSize(24))
                          ]))),
              GestureDetector(
                  onTap: () {
                    Get.dialog(AlertDialog(
                      backgroundColor: Colors.transparent,
                      contentPadding: EdgeInsets.zero,
                      insetPadding: EdgeInsets.only(left: 0),
                      content: LogOutPopupDialog(
                        Get.put(
                          LogOutPopupController(),
                        ),
                      ),
                    ));
                  },
                  child: Container(
                      margin: getMargin(left: 20, top: 16, right: 20),
                      padding: getPadding(all: 16),
                      decoration: AppDecoration.fillGray100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgIcLogout,
                                height: getSize(24),
                                width: getSize(24)),
                            Padding(
                                padding: getPadding(left: 16),
                                child: Text("lbl_logout".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtBody.copyWith(
                                        letterSpacing: getHorizontalSize(0.16),
                                        color: ColorConstant.red60001))),
                          ]))),
            ])));
  }

  navigatePersonalInfo() {
    Get.toNamed(
      AppRoutes.personalInfoScreen,
    );
  }

  navigateFAQ() {
    Get.toNamed(
      AppRoutes.faqScreen,
    );
  }

  navigatePrivacyPolicy() {
    Get.toNamed(
      AppRoutes.privacyPolicyScreen,
    );
  }
}
