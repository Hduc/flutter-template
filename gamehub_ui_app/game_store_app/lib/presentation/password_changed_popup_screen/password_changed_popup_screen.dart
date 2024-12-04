import 'controller/password_changed_popup_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/custom_button.dart';

class PasswordChangedPopupScreen
    extends GetWidget<PasswordChangedPopupController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: getPadding(left: 0, right: 0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  margin: getMargin(bottom: 5),
                  padding: getPadding(all: 24),
                  decoration: AppDecoration.white.copyWith(
                      borderRadius:
                      BorderRadiusStyle.roundedBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgVector,
                            height: getSize(110),
                            width: getSize(110),
                            margin: getMargin(top: 11)),
                        Padding(
                            padding: getPadding(top: 29),
                            child: Text(
                                "msg_password_changed".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                AppStyle.txtAeonikBold21)),
                        Container(
                            width: double.infinity,
                            margin: getMargin(top: 15),
                            child: Text(
                                "msg_your_password_has".tr,
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style:
                                AppStyle.txtBodyGray600)),
                        Padding(
                            padding: getPadding(top: 44),
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: CustomButton(

                                          height:
                                          getVerticalSize(
                                              48),
                                          text: "lbl_cancel".tr,
                                          margin: getMargin(
                                              right: 8),
                                          onTap: (){Get.back();},
                                          variant: ButtonVariant
                                              .BlueWhite,
                                          padding: ButtonPadding
                                              .PaddingAll13,
                                          fontStyle: ButtonFontStyle
                                              .AeonikBold18LightblueA700),
                                  ),
                                  Expanded(
                                      child: CustomButton(
                                          height:
                                          getVerticalSize(
                                              48),
                                          text: "lbl_ok".tr,
                                          margin: getMargin(
                                              left: 8),
                                          padding: ButtonPadding
                                              .PaddingAll13,
                                          onTap: () {
                                            onTapOk();
                                          }))
                                ]))
                      ]))
            ]));
  }

  onTapOk() {
    Get.offAllNamed(AppRoutes.loginScreen);
  }
}
