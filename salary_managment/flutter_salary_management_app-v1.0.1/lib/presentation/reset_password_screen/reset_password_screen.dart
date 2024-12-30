import 'controller/reset_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_salary_management_app/widgets/custom_elevated_button.dart';
import 'package:flutter_salary_management_app/widgets/custom_text_form_field.dart';

class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Form(
      key: _formKey,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          // appBar: _buildAppBar(),
          body: SafeArea(
            child: Column(children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.v),
                // decoration: AppDecoration.outlineGray300,
                decoration: BoxDecoration(
                  // color: appTheme.gray200,
                  border: Border(
                    bottom: BorderSide(
                      color: appTheme.gray200,
                      width: 1.h,
                    ),
                  ),
                ),
                child: CustomAppBar(
                  centerTitle: true,
                  leading: AppbarLeadingImage(
                              imagePath: ImageConstant.imgArrowLeft,
                              // margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
                              onTap: () {
                                onTapArrowLeft();
                              }),
                  title: AppbarSubtitle(
                    text: "lbl_reset_password".tr,
                  ),
                ),
              ),
              Expanded(child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
                child: Column(
                  children: [
                    SizedBox(
                        width: 396.h,
                        child: Text("msg_enter_your_email2".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyLarge!
                                .copyWith(height: 1.47))),
                    SizedBox(height: 25.v),
                    _buildResetPasswordForm(),
                    SizedBox(height: 19.v),
                    _buildConfirmPasswordForm(),
                    SizedBox(height: 30.v),
                    CustomElevatedButton(
                        text: "lbl_reset_password".tr,
                        onPressed: () {
                          if(_formKey.currentState!.validate()){

                            onTapResetPassword();
                          }
                        }),
                    SizedBox(height: 5.v)
                  ],
                ),
              ))

            ]),
          )),
    );
  }

  /// Section Widget
  // PreferredSizeWidget _buildAppBar() {
  //   return CustomAppBar(
  //       leadingWidth: 40.h,
  //       leading: AppbarLeadingImage(
  //           imagePath: ImageConstant.imgArrowLeft,
  //           margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
  //           onTap: () {
  //             onTapArrowLeft();
  //           }),
  //       centerTitle: true,
  //       title: AppbarSubtitle(text: "lbl_reset_password".tr),
  //       styleType: Style.bgOutline);
  // }

  /// Section Widget
  Widget _buildResetPasswordForm() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_new_password".tr, style: theme.textTheme.bodyLarge),
      SizedBox(height: 4.v),
      Obx(() => CustomTextFormField(
        hintText: "lbl_new_password".tr,
        textInputAction: TextInputAction.next,
          controller: controller.newpasswordController,
          validator: (value) {
            if(value!.isEmpty){
              return "please entre your new password".tr;
            }else if(value.length < 6){
              return "you password must be 6 character".tr;
            }
            return null;
          },
          suffix: GestureDetector(
              onTap: () {
                controller.isShowPassword.value =
                    !controller.isShowPassword.value;
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 15.v),
                  child: CustomImageView(
                      imagePath: controller.isShowPassword.value?ImageConstant.imgIcEye:ImageConstant.show,
                      height: 24.adaptSize,
                      width: 24.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 54.v),
          obscureText: controller.isShowPassword.value))
    ]);
  }

  /// Section Widget
  Widget _buildConfirmPasswordForm() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_confirm_password".tr, style: theme.textTheme.bodyLarge),
      SizedBox(height: 4.v),
      Obx(() => CustomTextFormField(
        hintText: "msg_confirm_password".tr,
          controller: controller.confirmpasswordController,
          textInputAction: TextInputAction.done,
          validator: (value) {
            if (value!.isEmpty)
              return 'Please enter confirm password';
            if (value != controller.newpasswordController.text)
              return 'Not Match password';
            return null;
          },
          suffix: GestureDetector(
              onTap: () {
                controller.isShowPassword1.value =
                    !controller.isShowPassword1.value;
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 15.v),
                  child: CustomImageView(
                      imagePath: controller.isShowPassword1.value?ImageConstant.imgIcEye:ImageConstant.show,
                      height: 24.adaptSize,
                      width: 24.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 54.v),
          obscureText: controller.isShowPassword1.value))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the resetPasswordSuccessScreen when the action is triggered.
  onTapResetPassword() {
    Get.toNamed(
      AppRoutes.resetPasswordSuccessScreen,
    );
  }
}
