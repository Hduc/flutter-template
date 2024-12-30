import 'controller/reset_password_success_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/custom_elevated_button.dart';

class ResetPasswordSuccessScreen
    extends GetWidget<ResetPasswordSuccessController> {
  const ResetPasswordSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5.v),
                  _buildPasswordReset()
                ],),));
  }

  /// Section Widget
  Widget _buildPasswordReset() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 26.v),
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(children: [
          Container(
              height: 120.adaptSize,
              width: 120.adaptSize,
              padding: EdgeInsets.symmetric(horizontal: 37.h, vertical: 29.v),
              decoration: AppDecoration.fillDeepPurple
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder60),
              child: CustomImageView(
                  imagePath: ImageConstant.imgLocation,
                  height: 62.v,
                  width: 42.h,
                  alignment: Alignment.center)),
          SizedBox(height: 33.v),
          Text("msg_password_reset_successfully".tr,
              style: theme.textTheme.headlineSmall),
          SizedBox(height: 10.v),
          SizedBox(
              width: 325.h,
              child: Text("msg_you_have_successfully".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge!.copyWith(height: 1.47))),
          SizedBox(height: 25.v),
          CustomElevatedButton(
              text: "lbl_go_to_login".tr,
              margin: EdgeInsets.symmetric(horizontal: 37.h),
              buttonTextStyle: CustomTextStyles.titleMediumWorkSansWhiteA700,
              onPressed: () {
                onTapGoToLogin();
              })
        ]));
  }

  /// Navigates to the logInWithActiveScreen when the action is triggered.
  onTapGoToLogin() {
    Get.toNamed(
      AppRoutes.logInWithDefualtScreen,
    );
  }
}
