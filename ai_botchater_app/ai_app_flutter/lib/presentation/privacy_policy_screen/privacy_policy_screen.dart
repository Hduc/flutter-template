import 'controller/privacy_policy_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/widgets/app_bar/appbar_image.dart';
import 'package:ai_app_flutter/widgets/app_bar/appbar_title.dart';
import 'package:ai_app_flutter/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends GetWidget<PrivacyPolicyController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(65),
                leadingWidth: 66,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 20, top: 21, bottom: 20, right: 20),
                    onTap: () {
                      onTapArrowleft50();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_privacy_policy".tr),
                styleType: Style.bgFillWhiteA700),
            body: ListView(
                padding: getPadding(left: 20, top: 5, right: 20, bottom: 5),
                children: [
                  Container(
                      margin: getMargin(top: 16),
                      child: Text("msg_as_designers_attempting".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBody.copyWith(
                              letterSpacing: getHorizontalSize(0.16),height: 1.5))),
                  Padding(
                      padding: getPadding(top: 24),
                      child: Text("msg_information_we_collect".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAirbnbCerealWXBd20)),
                  Container(
                      margin: getMargin(top: 16),
                      child: Text("msg_as_designers_attempting2".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBody.copyWith(
                              letterSpacing: getHorizontalSize(0.16),height: 1.5))),
                  Padding(
                      padding: getPadding(top: 24),
                      child: Text("msg_how_we_use_your".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAirbnbCerealWXBd20)),
                  Container(
                      margin: getMargin(top: 16),
                      child: Text("msg_this_is_one_of_the".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBody.copyWith(
                              letterSpacing: getHorizontalSize(0.16),height: 1.5)))
                ])));
  }

  onTapArrowleft50() {
    Get.back();
  }
}
