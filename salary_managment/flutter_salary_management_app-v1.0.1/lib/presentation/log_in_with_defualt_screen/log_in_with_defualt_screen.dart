// ignore_for_file: deprecated_member_use

import 'controller/log_in_with_defualt_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/core/utils/validation_functions.dart';
import 'package:flutter_salary_management_app/widgets/custom_elevated_button.dart';
import 'package:flutter_salary_management_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LogInWithDefualtScreen extends GetWidget<LogInWithDefualtController> {
  LogInWithDefualtScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        PrefUtils.closeApp();
        return Future.value(false);
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 31.v),
                child: Column(children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_log_in".tr,
                      style: theme.textTheme.headlineMedium!.copyWith(
                        color: Color(0xFF151515),
                        fontSize: 28.fSize,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("msg_unlock_your_potential".tr,
                        style: theme.textTheme.bodyLarge),
                  ),
                  SizedBox(height: 26.v),
                  _buildMasterUsername(),
                  SizedBox(height: 18.v),
                  _buildMasterUsername1(),
                  SizedBox(height: 20.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                          onTap: () {
                            onTapTxtForgotPassword();
                          },
                          child: Text("msg_forgot_password".tr,
                              style: theme.textTheme.bodyLarge))),
                  SizedBox(height: 29.v),
                  _buildLoginButton(),
                  SizedBox(height: 23.v),
                  _buildContinueWithRow(),
                  SizedBox(height: 23.v),
                  _buildGoogle(),
                  Spacer(),
                  SizedBox(height: 42.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtDonthaveanaccount();
                      },
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_don_t_have_an_account2".tr,
                                style: theme.textTheme.bodyLarge),
                            TextSpan(
                                text: "lbl_sign_up".tr,
                                style: CustomTextStyles.titleMediumPrimary)
                          ]),
                          textAlign: TextAlign.left))
                ]),
              ),
            ),
          )),
    );
  }

  /// Section Widget
  Widget _buildEmailField() {
    return CustomTextFormField(
      textInputAction: TextInputAction.next,
      controller: controller.emailFieldController,
      hintText: "msg_enter_your_email".tr,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return "please enter your email address".tr;
        } else if (!isValidEmail(value)) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
      // contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v)
    );
  }

  /// Section Widget
  Widget _buildMasterUsername() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "lbl_email_address".tr,
        style: TextStyle(
          color: Color(0xFF7C7C7C),
          fontSize: 17.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        // CustomTextStyles.bodyLargeGray600
      ),
      SizedBox(height: 5.v),
      _buildEmailField()
    ]);
  }

  /// Section Widget
  Widget _buildPasswordField() {
    return Obx(() {
      return CustomTextFormField(
        controller: controller.passwordFieldController,
        hintText: "msg_enter_your_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value!.isEmpty) {
            return "please enter your password".tr;
          } else if (value.length < 6) {
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
                    imagePath: controller.isShowPassword.value
                        ? ImageConstant.imgIcEye
                        : ImageConstant.show,
                    height: 24.adaptSize,
                    width: 24.adaptSize))),
        // validator: (value) {
        //   if (value == null || (!isValidPassword(value, isRequired: true))) {
        //     return "err_msg_please_enter_valid_password".tr;
        //   }
        //   return null;
        // },
        obscureText: controller.isShowPassword.value,
        // contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v),
      );
    });
  }

  /// Section Widget
  Widget _buildMasterUsername1() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_password".tr,
          style: TextStyle(
            color: Color(0xFF7C7C7C),
            fontSize: 17.fSize,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          )
          // CustomTextStyles.bodyLargeGray600
          ),
      SizedBox(height: 5.v),
      _buildPasswordField()
    ]);
  }

  /// Section Widget
  Widget _buildLoginButton() {
    return CustomElevatedButton(
        text: "lbl_log_in".tr,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            onTapLoginButton();
            PrefUtils.setLogin(false);
            Future.delayed(Duration(seconds: 3), () {
              controller.emailFieldController.clear();
              controller.passwordFieldController.clear();
            });
          }
        });
  }

  /// Section Widget
  Widget _buildContinueWithRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.symmetric(vertical: 9.v),
          child: SizedBox(width: 136.h, child: Divider())),
      Text("msg_or_continue_with".tr, style: CustomTextStyles.bodyLarge16_1),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 9.v),
          child: SizedBox(width: 137.h, child: Divider()))
    ]);
  }

  // ignore: unused_element

  /// Section Widget
  Widget _buildGoogle() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        child: Container(
          height: 56.v,
          decoration: ShapeDecoration(
            color: Color(0xFFF8F8F8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.google,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(width: 8.h),
              Text(
                'Google',
                style: TextStyle(
                  color: theme.colorScheme.onSecondaryContainer,
                  fontSize: 17.fSize,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
      SizedBox(width: 16.h),
      Expanded(
        child: Container(
          height: 56.v,
          decoration: ShapeDecoration(
            color: Color(0xFFF8F8F8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.facebook,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(width: 8.h),
              Text(
                'Facebook',
                style: TextStyle(
                  color: theme.colorScheme.onSecondaryContainer,
                  fontSize: 17.fSize,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
      // _buildGoogleButton(),
      // _buildFacebookButton()
    ]);
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPassword() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapLoginButton() {
    Get.toNamed(
      AppRoutes.homeScreenContainerScreen,
    );
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapGoogleButton() {
    Get.toNamed(
      AppRoutes.homeScreenContainerScreen,
    );
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapFacebookButton() {
    Get.toNamed(
      AppRoutes.homeScreenContainerScreen,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtDonthaveanaccount() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
