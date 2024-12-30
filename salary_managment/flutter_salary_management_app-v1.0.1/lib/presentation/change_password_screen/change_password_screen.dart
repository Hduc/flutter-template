import 'controller/change_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_salary_management_app/widgets/custom_elevated_button.dart';
import 'package:flutter_salary_management_app/widgets/custom_text_form_field.dart';

class ChangePasswordScreen extends GetWidget<ChangePasswordController> {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: _buildAppBar(),
        body: Form(
          key: formKey,
          child: Column(children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.v),
              // decoration: AppDecoration.outlineGray300,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: appTheme.gray200,
                    width: 1.h,
                  ),
                ),
              ),
              child: CustomAppBar(
                leading: AppbarLeadingImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    // margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
                    onTap: () {
                      onTapArrowLeft();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(
                  text: "lbl_change_password".tr,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.h),
                child: Column(
                  children: [
                    SizedBox(
                        // width: 396.h,
                        child: Text("msg_change_your_password".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyLarge!
                                .copyWith(height: 1.47))),
                    SizedBox(height: 17.v),
                    _buildChangePasswordForm(),
                    SizedBox(height: 19.v),
                    _buildConfirmPasswordForm(),
                    SizedBox(height: 5.v)
                  ],
                ),
              ),
            )
          ]),
        ),
        bottomNavigationBar: _buildSaveButton(
          () {
            if (formKey.currentState!.validate()) {
              Get.back();
              // onTapSaveButton();
            }
          },
        ));
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
  //       title: AppbarSubtitle(text: "lbl_change_password".tr),
  //       styleType: Style.bgOutline);
  // }

  /// Section Widget
  Widget _buildChangePasswordForm() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_new_password".tr, style: theme.textTheme.bodyLarge),
      SizedBox(height: 4.v),
      Obx(() => CustomTextFormField(
          controller: controller.newpasswordController,
          validator: (value) {
            if (value!.isEmpty) {
              return "enter your new password".tr;
            } else if (value.length < 6) {
              return "your password must be 6 character".tr;
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
                      imagePath: controller.isShowPassword.value
                          ? ImageConstant.imgIcEyeOnprimary
                          : ImageConstant.show,
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
          controller: controller.confirmpasswordController,
          textInputAction: TextInputAction.done,
          validator: (value) {
            if (value!.isEmpty) {
              return "enter your confirm password".tr;
            } else if (value != controller.newpasswordController.text) {
              return "password not match".tr;
            }
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
                      imagePath: controller.isShowPassword1.value
                          ? ImageConstant.imgIcEyeOnprimary
                          : ImageConstant.show,
                      height: 24.adaptSize,
                      width: 24.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 54.v),
          obscureText: controller.isShowPassword1.value))
    ]);
  }

  /// Section Widget
  Widget _buildSaveButton(void Function()? onPressed) {
    return CustomElevatedButton(
        text: "lbl_save".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 40.v),
        onPressed: () {
          onPressed?.call();
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the securitySettingScreen when the action is triggered.
  onTapSaveButton() {
    Get.toNamed(
      AppRoutes.securitySettingScreen,
    );
  }
}
