import 'package:flutter/services.dart';

import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_floating_edit_text.dart';
import 'controller/log_in_controller.dart';
import 'package:carwash_app/core/app_export.dart';
import 'package:carwash_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:carwash_app/domain/googleauth/google_auth_helper.dart';


class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  LogInController controller = Get.put(LogInController());
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor:ColorConstant.whiteA700,
          statusBarIconBrightness: Brightness.dark),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        closeApp();
        return false;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.whiteA700,
          body: SafeArea(
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 43, right: 16, bottom: 43),
                child: Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("lbl_sign_in".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtOutfitBold34),
                        Padding(
                            padding: getPadding(top: 13),
                            child: Text("msg_access_your_dreams".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtBody)),
                        CustomFloatingEditText(
                            controller: controller.usernameController,
                            labelText: "lbl_email_address".tr,
                            hintText: "lbl_email_address".tr,
                            margin: getMargin(top: 40),
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "Please enter valid email";
                              }
                              return null;
                            }),
                        Obx(
                              () => CustomFloatingEditText(
                              controller: controller.passwordController,
                              labelText: "lbl_password".tr,
                              hintText: "lbl_password".tr,
                              margin: getMargin(top: 16),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.emailAddress,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                    !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 16,
                                          right: 16,
                                          bottom: 16),
                                      child: CustomImageView(
                                          svgPath: controller
                                              .isShowPassword.value
                                              ? ImageConstant.imgAirplane
                                              : ImageConstant.imgAirplane))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56)),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: controller.isShowPassword.value),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                                onTap: () {
                                  onTapTxtForgotpassword();
                                },
                                child: Padding(
                                    padding: getPadding(top: 17),
                                    child: Text("msg_forgot_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtFootnote)))),
                        CustomButton(
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                PrefUtils.setIsSignIn(false);
                                Get.toNamed(AppRoutes.homeContainerScreen);
                              }
                            },
                            height: getVerticalSize(54),
                            text: "lbl_log_in".tr,
                            margin: getMargin(top: 25)),
                        Padding(
                          padding: getPadding(left: 64, right: 64, top: 30),
                          child: GestureDetector(
                            onTap: () {
                              onTapContinuewith();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(getHorizontalSize(16))),
                                  color: ColorConstant.whiteA700,
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 4),
                                        blurRadius: 4,
                                        color: ColorConstant.black900
                                            .withOpacity(0.06))
                                  ]),
                              width: double.infinity,
                              child: Padding(
                                padding: getPadding(
                                    top: 16, bottom: 16, left: 28, right: 28),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                      height: getVerticalSize(24),
                                      width: getHorizontalSize(24),
                                      svgPath:
                                      ImageConstant.imgGoogleButtonIcon,
                                    ),
                                    Text(
                                      "msg_continue_with_google".tr,
                                      style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(
                                          17,
                                        ),
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ]),
                )),
          ),
          bottomNavigationBar: Container(
              height: getVerticalSize(21),
              width: getHorizontalSize(228),
              margin: getMargin(left: 100, right: 100, bottom: 37),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                        onTap: () {
                          onTapTxtDonthaveanaccount();
                        },
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "msg_don_t_have_an_account2".tr,
                                  style: TextStyle(
                                      color: ColorConstant.black900,
                                      fontSize: getFontSize(16),
                                      fontFamily: 'Outfit',
                                      fontWeight: FontWeight.w400)),
                              TextSpan(
                                  text: "lbl_sign_up".tr,
                                  style: TextStyle(
                                      color: ColorConstant.indigo800,
                                      fontSize: getFontSize(16),
                                      fontFamily: 'Outfit',
                                      fontWeight: FontWeight.w400))
                            ]),
                            textAlign: TextAlign.left))),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.signUpScreen);
                  },
                  child: Align(
                      alignment: Alignment.center,
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_don_t_have_an_account2".tr,
                                style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(16),
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.w400)),
                            TextSpan(
                                text: "lbl_sign_up".tr,
                                style: TextStyle(
                                    color: ColorConstant.indigo800,
                                    fontSize: getFontSize(16),
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.w400))
                          ]),
                          textAlign: TextAlign.left)),
                )
              ]))),
    );
  }

  onTapTxtForgotpassword() {
    Get.toNamed(
      AppRoutes.fotgotPasswordScreen,
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





