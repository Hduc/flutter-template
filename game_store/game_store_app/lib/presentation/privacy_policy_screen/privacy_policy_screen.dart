import 'controller/privacy_policy_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';

class PrivacyPolicyScreen extends GetWidget<PrivacyPolicyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(66),
            leadingWidth: 44,
            leading: AppbarImage(
                height: getSize(24),
                width: getSize(24),
                svgPath: ImageConstant.imgArrowleftBlack900,
                margin: getMargin(left: 20, top: 17, bottom: 25),
                onTap: () {
                  onTapArrowleft22();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_privacy_policy".tr),
            styleType: Style.bgFillWhiteA700),
        body: SafeArea(
          child: Container(
              width: double.maxFinite,
              padding: getPadding(left: 20, top: 27, right: 20, bottom: 27),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("msg_types_of_data_we".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtHeadline),
                    Container(
                        width: getHorizontalSize(368),
                        margin: getMargin(top: 15, right: 19),
                        child: Text("msg_torem_ipsum_dolor".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtAeonikRegular15)),
                    Padding(
                        padding: getPadding(top: 25),
                        child: Text("msg_use_of_your_personal".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtHeadline)),
                    Container(
                        width: getHorizontalSize(368),
                        margin: getMargin(top: 15, right: 19),
                        child: Text("msg_torem_ipsum_dolor".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtAeonikRegular15)),
                    Padding(
                        padding: getPadding(top: 25),
                        child: Text("msg_disclosure_of_your".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtHeadline)),
                    Container(
                        width: getHorizontalSize(384),
                        margin: getMargin(top: 15, bottom: 5),
                        child: Text("msg_lorem_ipsum_dolor".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtAeonikRegular15))
                  ])),
        ));
  }

  onTapArrowleft22() {
    Get.back();
  }
}
