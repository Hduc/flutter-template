import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/core/utils/validation_functions.dart';
import 'package:musicapp/widgets/custom_elevated_button.dart';
import 'package:musicapp/widgets/custom_text_form_field.dart';

import 'controller/login_controller.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 LoginController controller = Get.put(LoginController());
 GlobalKey<FormState> _formKey = GlobalKey<FormState>();
 @override
 void initState() {
   super.initState();
  setSafeAreaColor();
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
          backgroundColor: appTheme.bgColor,
          body: Form(
              key: _formKey,
              child: Container(
                color: appTheme.bgColor,
                  width: double.maxFinite,
                  padding:
                  getPadding(left: 20, top: 60, right: 20, bottom: 40),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgMusic,
                                height: getVerticalSize(45),
                                width: getHorizontalSize(30)),
                            Padding(
                                padding:
                                getPadding(left: 11, top: 9, bottom: 8),
                                child: Text("lbl_music_book".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleLarge))
                           ]),
                       Padding(
                           padding: getPadding(top: 59),
                           child: Text("lbl_log_in".tr,
                               overflow: TextOverflow.ellipsis,
                               textAlign: TextAlign.left,
                               style: theme.textTheme.displaySmall)),
                       Container(
                           width: getHorizontalSize(326),
                           margin: getMargin(left: 30, top: 13, right: 30),
                           child: Text("msg_please_enter_your".tr,
                               maxLines: 2,
                               overflow: TextOverflow.ellipsis,
                               textAlign: TextAlign.center,
                               style: theme.textTheme.bodyLarge)),
                       Padding(
                           padding: getPadding(top: 46),
                           child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                Text("lbl_email_address".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                    TextThemeHelper.bodyLargeGray600),
                                CustomTextFormField(
                                    controller: controller.emailController,
                                    margin: getMargin(top: 5),
                                    contentPadding: getPadding(
                                        left: 12,
                                        top: 18,
                                        right: 12,
                                        bottom: 18),
                                    textStyle:
                                    TextThemeHelper.text16width400Black,
                                    hintText: "msg_enter_email_address".tr,
                                    hintStyle:
                                    TextThemeHelper.bodyLargeGray600,
                                    textInputAction: TextInputAction.next,
                                    textInputType:
                                    TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        if (!isValidEmail(value,
                                            isRequired: true)){
                                          return "Please enter valid email";
                                        }
                                        return "Please enter email";
                                      }
                                      return null;
                                    })
                               ])),
                       Padding(
                           padding: getPadding(top: 26),
                           child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                Text("lbl_password".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                    TextThemeHelper.bodyLargeGray600),
                                Obx(() => CustomTextFormField(
                                    controller:
                                    controller.passwordoneController,
                                    margin: getMargin(top: 5),
                                    contentPadding: getPadding(
                                        left: 16, top: 18, bottom: 18),
                                    textStyle:
                                    TextThemeHelper.text16width400Black,
                                    hintText: "lbl_enter_password".tr,
                                    hintStyle:
                                    TextThemeHelper.bodyLargeGray600,
                                    textInputType:
                                    TextInputType.visiblePassword,
                                    suffix: InkWell(
                                        onTap: () {
                                         controller.isShowPassword.value =
                                         !controller
                                             .isShowPassword.value;
                                        },
                                        child: Container(
                                            margin: getMargin(
                                                left: 12,
                                                top: 16,
                                                right: 16,
                                                bottom: 16),
                                            child: CustomImageView(
                                                svgPath: !controller
                                                    .isShowPassword
                                                    .value
                                                    ? ImageConstant.imgEye
                                                    : ImageConstant
                                                    .imgEyeClose))),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(56)),
                                    validator: (value) {
                                     if (value == null || value.isEmpty) {
                                      return "Please enter your password.";
                                     }
                                     return null;
                                    },
                                    obscureText:
                                    controller.isShowPassword.value))
                               ])),
                       Align(
                           alignment: Alignment.centerRight,
                           child: GestureDetector(
                               onTap: () {
                                onTapTxtForgotpassword();
                               },
                               child: Padding(
                                   padding: getPadding(top: 18),
                                   child: Text("msg_forgot_password".tr,
                                       overflow: TextOverflow.ellipsis,
                                       textAlign: TextAlign.left,
                                       style: theme.textTheme.bodyLarge!.copyWith(
                                           color: PrefUtils().getThemeData() == "primary"?Colors.black:Colors.white
                                       ))))),
                       CustomElevatedButton(
                           text: "lbl_login2".tr,
                           margin: getMargin(top: 45),
                           buttonStyle: ButtonThemeHelper.fillDeeppurpleA200
                               .copyWith(
                               fixedSize:
                               MaterialStateProperty.all<Size>(Size(
                                   double.maxFinite,
                                   getVerticalSize(54)))),
                           buttonTextStyle:
                           TextThemeHelper.titleMediumPrimary_1,
                           onTap: () {
                             if(_formKey.currentState!.validate()){
                               PrefUtils.setIsSignIn(false);
                            onTapLoginone();}
                           }),
                       Spacer(),
                       GestureDetector(
                           onTap: () {
                            onTapTxtDonthaveanaccount();
                           },
                           child: Padding(
                               padding: getPadding(bottom: 6),
                               child: RichText(
                                   text: TextSpan(children: [
                                    TextSpan(
                                        text:
                                        "msg_don_t_have_an_account2".tr,
                                        style: TextStyle(
                                            color: appTheme.black900,
                                            fontSize: getFontSize(17),
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                            color: appTheme.black900,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w700)),
                                    TextSpan(
                                        text: "lbl_sign_up".tr,
                                        style: TextStyle(
                                            color: appTheme.deepPurpleA200,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w700))
                                   ]),
                                   textAlign: TextAlign.left)))
                      ])))));
 }

 onTapTxtForgotpassword() {
  Get.toNamed(
   AppRoutes.forgotPasswordScreen,
  );
 }

 onTapLoginone() {
  Get.toNamed(
   AppRoutes.homeScreenContainerScreen,
  );
 }

 onTapTxtDonthaveanaccount() {
  Get.toNamed(
   AppRoutes.signUpScreen,
  );
 }
}



