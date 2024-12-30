import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/custom_elevated_button.dart';

import 'controller/reset_password_controller.dart';

class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: getMargin(bottom: 5),
        padding: getPadding(
            left: 20, top: 22, right: 20, bottom: 22),
        decoration: AppDecoration.white.copyWith(
          color: appTheme.bgColor,
            borderRadius: BorderRadiusStyle.roundedBorder24),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                  svgPath: ImageConstant.imgLike61,
                  height: getSize(122),
                  width: getSize(122),
                  margin: getMargin(top: 2)),
              Padding(
                  padding: getPadding(top: 17),
                  child: Text("msg_password_changed".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.titleLarge)),
              Container(
                  width: getHorizontalSize(332),
                  margin: getMargin(left: 7, top: 13, right: 7),
                  child: Text("msg_your_password_has".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyLarge)),
              CustomElevatedButton(
                  text: "lbl_ok".tr,
                  margin: getMargin(top: 28),
                  buttonStyle: ButtonThemeHelper
                      .fillDeeppurpleA200
                      .copyWith(
                      fixedSize:
                      MaterialStateProperty.all<Size>(
                          Size(double.maxFinite,
                              getVerticalSize(54)))),
                  buttonTextStyle:
                  TextThemeHelper.titleMediumPrimary_1,
                  onTap: () {
                    onTapOk();
                  })
            ]));
  }

  onTapOk() {
   Get.offAllNamed(AppRoutes.loginScreen);
  }
}
