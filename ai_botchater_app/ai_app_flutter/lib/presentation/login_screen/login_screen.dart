// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:flutter/services.dart';

import 'controller/login_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/core/utils/validation_functions.dart';
import 'package:ai_app_flutter/widgets/custom_button.dart';
import 'package:ai_app_flutter/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:ai_app_flutter/presentation/login_success_dialog/login_success_dialog.dart';
import 'package:ai_app_flutter/presentation/login_success_dialog/controller/login_success_controller.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<bool> _requestPop() {
    if (Platform.isIOS) {
      exit(0);
    } else {
      SystemNavigator.pop();
    }
    return new Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _requestPop,
      child: SafeArea(
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: ColorConstant.whiteA700,
              body: Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: getVerticalSize(24),
                        ),
                        CustomImageView(
                            svgPath: ImageConstant.imgFrameGray400,
                            height: getVerticalSize(108),
                            width: getHorizontalSize(77)),
                        SizedBox(
                          height: getVerticalSize(16),
                        ),
                        Text("lbl_welcome_back".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtAirbnbCerealWBd24),
                        Padding(
                            padding: getPadding(top: 16, right: 20, left: 20),
                            child: Text("msg_please_enter_your".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtBody.copyWith(
                                    letterSpacing: getHorizontalSize(0.16)))),
                        Padding(
                          padding: getPadding(right: 20, left: 20),
                          child: CustomTextFormField(
                              controller: controller.emailController,
                              hintText: "lbl_email_address".tr,
                              margin: getMargin(top: 40),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56)),
                              suffix: SizedBox(
                                height: getVerticalSize(56),
                              ),
                              variant: TextFormFieldVariant.OutlineGray30001,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                        ),
                        Obx(() => Padding(
                              padding: getPadding(right: 20, left: 20),
                              child: CustomTextFormField(
                                  controller: controller.passwordController,
                                  hintText: "lbl_password".tr,
                                  margin: getMargin(top: 24),
                                  variant:
                                      TextFormFieldVariant.OutlineGray30001,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  suffix: InkWell(
                                      onTap: () {
                                        controller.isShowPassword.value =
                                            !controller.isShowPassword.value;
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 16,
                                              top: 16,
                                              right: 16,
                                              bottom: 16),
                                          child: CustomImageView(
                                              svgPath: controller
                                                      .isShowPassword.value
                                                  ? ImageConstant.imgIcShow
                                                  : ImageConstant.imgIcShow))),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(56)),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText:
                                      controller.isShowPassword.value),
                            )),
                        Padding(
                            padding: getPadding(top: 16, left: 20, right: 20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Obx(
                                        () => CustomImageView(
                                          onTap: () {
                                            if (controller.isCheckbox.value ==
                                                true) {
                                              controller.isCheckbox.value =
                                                  false;
                                            } else {
                                              controller.isCheckbox.value =
                                                  true;
                                            }
                                          },
                                          svgPath: Constant.imagePath +
                                              "${controller.isCheckbox.value ? 'uncheck.svg' : 'check.svg'}",
                                          height: getVerticalSize(24),
                                          width: getHorizontalSize(24),
                                        ),
                                      ),
                                      SizedBox(
                                        width: getHorizontalSize(10),
                                      ),
                                      Text("Remebmer me",
                                          style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'AirbnbCereal_W_Lt',
                                            fontWeight: FontWeight.w300,
                                          ))
                                    ],
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        navigateForgotScreen();
                                      },
                                      child: Padding(
                                          padding: getPadding(top: 3),
                                          child: Text("msg_forgot_passsword".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtBody.copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.16)))))
                                ])),
                        CustomButton(
                            height: getVerticalSize(56),
                            text: "lbl_login".tr,
                            margin: getMargin(top: 48, left: 20, right: 20),
                            onTap: () {
                              navigateLoginDialog();
                            })
                      ])),
              bottomNavigationBar: Padding(
                  padding: getPadding(bottom: 8),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("msg_don_t_have_an_account".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtBodyGray600.copyWith(
                                letterSpacing: getHorizontalSize(0.16))),
                        GestureDetector(
                            onTap: () {
                              navigateSignUp();
                            },
                            child: Padding(
                                padding: getPadding(left: 8),
                                child: Text("lbl_sign_up".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtHeadline)))
                      ])))),
    );
  }

  navigateForgotScreen() {
    Get.toNamed(
      AppRoutes.resetPasswordScreen,
    );
  }

  navigateLoginDialog() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.only(left: 0),
      content: LoginSuccessDialog(
        Get.put(
          LoginSuccessController(),
        ),
      ),
    ));
  }

  navigateSignUp() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
