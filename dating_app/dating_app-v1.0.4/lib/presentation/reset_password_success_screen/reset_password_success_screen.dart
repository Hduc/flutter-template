import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import 'controller/reset_password_success_controller.dart';

class ResetPasswordSuccessScreen
    extends GetWidget<ResetPasswordSuccessController> {
  const ResetPasswordSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
            width: double.maxFinite,
            padding: getPadding(left:getSize(59), right: getSize(59)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgGroup34160,
                      height: getVerticalSize(getSize(148)),
                      width: getHorizontalSize(getSize(156))),
                  Padding(
                      padding: getPadding(top:getSize(7)),
                      child: Text("msg_password_reset_successfully".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleLarge22)),
                  Container(

                      margin: getMargin(top: getSize(14)),
                      child: Text("msg_you_have_successfully".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge)),
                  CustomElevatedButton(
                      text: "lbl_go_to_login".tr,
                      margin: getMargin(
                          left: getSize(30), top:getSize(24), right:getSize(30), ),
                      buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(
                              Size(double.maxFinite, getVerticalSize(52)))),
                      buttonTextStyle: theme.textTheme.titleMedium!,
                      onTap: () {
                       onTapGotologin();
                      })
                ])));
  }


  onTapGotologin() {
    Get.toNamed(
      AppRoutes.logInScreen,
    );
  }
}
