import 'package:flutter/gestures.dart';

import '../../core/country_picker/country.dart';
import '../home_page_screen/controller/home_page_controller.dart';
import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/core/utils/validation_functions.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';
import 'package:hair_salon_app/widgets/custom_phone_number.dart';
import 'package:hair_salon_app/widgets/custom_text_form_field.dart';
import 'package:hair_salon_app/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Form(
            key: _formKey,
            child: Padding(
              padding:  EdgeInsets.only(top: 28),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: getVerticalSize(30),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: getPadding(left: 16),
                        child: Text("lbl_sign_up".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtSFProTextBold34),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(top: 16, left: 16),
                          child: Text("msg_join_us_and_sign".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtBody)),
                    ),
                    Expanded(
                      child: ListView(
                        primary: true,
                        shrinkWrap: false,
                        children: [
                          Padding(
                              padding:
                                  getPadding(top: 40, left: 16, right: 16),
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_full_name".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBody),
                                    CustomTextFormField(
                                      controller:
                                          controller.fullnameController,
                                      hintText: "lbl_full_name".tr,
                                      margin: getMargin(top: 10),
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter full name";
                                        }
                                        return null;
                                      },
                                    )
                                  ])),
                          Padding(
                              padding: getPadding(left: 16, top: 24),
                              child: Text("lbl_phone_number".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBody)),
                          Padding(
                              padding:
                                  getPadding(top: 10, left: 16, right: 16),
                              child: Obx(() => CustomPhoneNumber(
                                  country: controller.selectedCountry.value,
                                  controller:
                                      controller.phoneNumberController,
                                  onTap: (Country country) {
                                    controller.selectedCountry.value =
                                        country;
                                  }))),
                          Padding(
                              padding:
                                  getPadding(top: 24, right: 16, left: 16),
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_email".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBody),
                                    CustomTextFormField(
                                        controller:
                                            controller.emailController,
                                        hintText: "lbl_email_address".tr,
                                        margin: getMargin(top: 10),
                                        textInputType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidEmail(value,
                                                  isRequired: true))) {
                                            return "Please enter valid email";
                                          }
                                          return null;
                                        })
                                  ])),
                          Padding(
                              padding:
                                  getPadding(top: 24, left: 16, right: 16),
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBody),
                                    Obx(
                                      () =>  CustomTextFormField(
                                        hintText: "Password",
                                        controller:
                                            controller.group3345Controller,
                                        margin: getMargin(top: 10),
                                        textInputAction: TextInputAction.done,
                                        isObscureText:
                                            controller.isPasswordVisible.value,
                                        suffix: CustomImageView(
                                          onTap: () {
                                            if (controller
                                                .isPasswordVisible.value) {
                                              controller.isPasswordVisible
                                                  .value = false;
                                            } else {
                                              controller.isPasswordVisible
                                                  .value = true;
                                            }
                                          },
                                          svgPath: controller
                                                  .isPasswordVisible.value
                                              ? Constant.imagePath +
                                                  "eye_close.svg"
                                              : Constant.imagePath + "eye.svg",
                                          height: getVerticalSize(24),
                                          width: getVerticalSize(24),
                                          margin: getMargin(right: 16),
                                        ),
                                        // suffixConstraints: BoxConstraints(
                                        //     maxWidth: getVerticalSize(40),
                                        //     maxHeight: getHorizontalSize(61),
                                        //     minHeight: getVerticalSize(61)),
                                      ),
                                    )
                                  ])),
                        ],
                      ),
                    ),
                    CustomButton(
                        height: getVerticalSize(53),
                        text: "lbl_sign_up".tr,
                        margin: getMargin(top: 30, right: 16, left: 16),
                        onTap: () {
                          onTapSignup();
                        }),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
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
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                            onTap: () {
                              onTapTxtAlreadyhavean();
                            },
                            child: Padding(
                                padding: getPadding(top: 49, bottom: 37),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_already_have_an2".tr,
                                          style: TextStyle(
                                              color: ColorConstant.fromHex(
                                                  "#000000"),
                                              fontSize: getFontSize(16),
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: " ",
                                          style: TextStyle(
                                              color: ColorConstant.fromHex(
                                                  "#000000"),
                                              fontSize: getFontSize(16),
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: "lbl_sign_in".tr,
                                          style: TextStyle(
                                              color: ColorConstant.fromHex(
                                                  "#a81650"),
                                              fontSize: getFontSize(16),
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w400),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Get.back();
                                            })
                                    ]),
                                    textAlign: TextAlign.left))))
                  ]),
            )));
  }

  onTapSignup() {
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

  onTapTxtAlreadyhavean() {
    Get.toNamed(
      AppRoutes.logInScreen,
    );
  }
}
