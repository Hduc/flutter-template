import 'controller/empty_notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';

class EmptyNotificationScreen extends GetWidget<EmptyNotificationController> {
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
                  onTapArrowleft33();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_notifications".tr),
            styleType: Style.bgFillWhiteA700),
        body: SafeArea(
          child: Container(
              width: double.maxFinite,
              padding: getPadding(top: 198),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                        svgPath: ImageConstant.imgBell1,
                        height: getVerticalSize(157),
                        width: getHorizontalSize(300)),
                    Padding(
                        padding: getPadding(top: 30),
                        child: Text("msg_no_notification".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFProTextBold22)),
                    Container(
                        width: getHorizontalSize(270),
                        margin: getMargin(top: 17, bottom: 5),
                        child: Text("msg_pellentesque_eu".tr,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtBody))
                  ])),
        ));
  }

  onTapArrowleft33() {
    Get.back();
  }
}
