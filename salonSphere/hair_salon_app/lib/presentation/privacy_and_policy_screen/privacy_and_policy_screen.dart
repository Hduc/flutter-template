import 'controller/privacy_and_policy_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';

class PrivacyAndPolicyScreen extends GetWidget<PrivacyAndPolicyController> {
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
                  onTapArrowleft41();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_privacy_policy".tr),
            styleType: Style.bgFillWhiteA700),
        body: SafeArea(
          child: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 16,
                top: 6,
                right: 16,
              ),
              child: ListView(children: [
                Text("msg_1_types_of_data".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProTextBold20),
                Container(
                    margin: getMargin(top: 16),
                    child: Text("msg_duis_tristique_diam".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBodyGray600)),
                Padding(
                    padding: getPadding(top: 24),
                    child: Text("msg_2_use_of_your_personal".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSFProTextBold20)),
                Container(
                    margin: getMargin(top: 16),
                    child: Text("msg_sed_sollicitudin".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBodyGray600)),
                Padding(
                    padding: getPadding(top: 24),
                    child: Text("msg_3_disclosure_of".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSFProTextBold20)),
                Container(
                    margin: getMargin(top: 16),
                    child: Text("msg_sed_sollicitudin2".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBodyGray600))
              ])),
        ));
  }

  onTapArrowleft41() {
    Get.back();
  }
}
