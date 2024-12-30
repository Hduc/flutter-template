import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:hair_salon_app/presentation/home_page_screen/controller/home_page_controller.dart';

import 'controller/log_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/core/utils/validation_functions.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';
import 'package:hair_salon_app/widgets/custom_text_form_field.dart';
import 'package:hair_salon_app/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends GetWidget<LogInController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  HomePageController homePageController = Get.put(HomePageController());

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
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.whiteA700,
          body: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: getVerticalSize(30),
                      ),
                      Text("lbl_sign_in".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtSFProTextBold34),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Text("msg_your_account_your".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtBody)),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: getPadding(top: 40, left: 16, right: 16),
                          child: Text("lbl_email".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtBody),
                        ),
                      ),
                      CustomTextFormField(
                          controller: controller.emailController,
                          hintText: "lbl_email_address".tr,
                          margin: getMargin(top: 10, right: 16, left: 16),
                          textInputType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null ||
                                (!isValidEmail(value, isRequired: true))) {
                              return "Please enter a valid email address";
                            }
                            return null;
                          }),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: getPadding(top: 25, left: 16, right: 16),
                          child: Text("Password",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtBody),
                        ),
                      ),
                      Obx(
                        () =>  CustomTextFormField(
                          controller: controller.passwordController,
                          hintText: "Password",
                          margin: getMargin(top: 10, right: 16, left: 16),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter 8 digit password";
                            }
                            return null;
                          },
                          isObscureText: controller.isPasswordVisible.value,
                          suffix: CustomImageView(
                            onTap: () {
                              if (controller.isPasswordVisible.value) {
                                controller.isPasswordVisible.value = false;
                              } else {
                                controller.isPasswordVisible.value = true;
                              }
                            },
                            svgPath: controller.isPasswordVisible.value
                                ? Constant.imagePath + "eye_close.svg" : Constant.imagePath + "eye.svg",
                            height: getVerticalSize(24),
                            width: getVerticalSize(24),
                            margin: getMargin(right: 16),
                          ),
                          // suffixConstraints: BoxConstraints(
                          //     maxWidth: getVerticalSize(40),
                          //     maxHeight: getHorizontalSize(61),
                          //     minHeight: getVerticalSize(61)),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtForgotpassword();
                              },
                              child: Padding(
                                  padding: getPadding(top: 11, right: 20),
                                  child: Text("msg_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtBody)))),
                      CustomButton(
                          height: getVerticalSize(53),
                          text: "lbl_log_in".tr,
                          margin: getMargin(top: 30, left: 16, right: 16),
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              onTapLogin();
                            }
                          }),
                      Container(
                        height: getVerticalSize(56),
                        margin: getMarginOrPadding(top: 24),
                        padding: getPadding(
                            left: 28, right: 28, top: 16, bottom: 16),
                        decoration: BoxDecoration(
                            color: ColorConstant.whiteA700,
                            borderRadius:
                            BorderRadius.circular(getVerticalSize(100)),
                            boxShadow: [
                              BoxShadow(
                                  color: ColorConstant.black9000f,
                                  blurRadius: 4,
                                  offset: Offset(0, 4))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgGoogle,
                              height: getVerticalSize(24),
                              width: getVerticalSize(24),
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: getVerticalSize(16),
                            ),
                            Text("Continue with Google",
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(
                                    17,
                                  ),
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w600,
                                ))
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                          padding: getPadding(bottom: 19),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_don_t_have_an_account2".tr,
                                    style: TextStyle(
                                        color:
                                        ColorConstant.fromHex("#000000"),
                                        fontSize: getFontSize(16),
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                        color:
                                        ColorConstant.fromHex("#000000"),
                                        fontSize: getFontSize(16),
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "lbl_sign_up".tr,
                                    style: TextStyle(
                                        color:
                                        ColorConstant.fromHex("#a81650"),
                                        fontSize: getFontSize(16),
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w400),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        onTapTxtDonthaveanaccount();
                                      })
                              ]),
                              textAlign: TextAlign.left))
                    ]),
              ))),
    );
  }

  onTapTxtForgotpassword() {
    Get.toNamed(
      AppRoutes.forgetPassword1Screen,
    );
  }

  onTapLogin() {
    PrefUtils.setIsLogin(false);
    homePageController.selectedIndex.value = 0;
    Get.toNamed(
      AppRoutes.homePageScreen,
    );
  }

  onTapContinuewith() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapTxtDonthaveanaccount() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
