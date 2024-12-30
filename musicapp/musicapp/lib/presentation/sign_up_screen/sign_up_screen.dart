import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/core/utils/validation_functions.dart';
import 'package:musicapp/widgets/custom_elevated_button.dart';
import 'package:musicapp/widgets/custom_text_form_field.dart';

import 'controller/sign_up_controller.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  SignUpController controller = Get.put(SignUpController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
   setSafeAreaColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Get.back();
          return true;
        },
        child: Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: appTheme.bgColor,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Padding(
                        padding:
                            getPadding(left: 20, right: 20, bottom: 46,top: 60),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgMusic,
                                        height: getVerticalSize(45),
                                        width: getHorizontalSize(30)),
                                    Padding(
                                        padding: getPadding(
                                            left: 11,
                                            top: 9,
                                            bottom: 8),
                                        child: Text("lbl_music_book".tr,
                                            overflow:
                                                TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme
                                                .textTheme.titleLarge))
                                  ]),
                              Padding(
                                  padding: getPadding(top: 59),
                                  child: Text("lbl_sign_up".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme
                                          .textTheme.displaySmall)),
                              Container(
                                  width: getHorizontalSize(374),
                                  margin: getMargin(
                                      left: 7, top: 12, right: 7),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "lbl_p".tr,
                                            style: TextStyle(
                                                color:
                                                appTheme.black900,
                                                fontSize:
                                                getFontSize(17),
                                                fontFamily:
                                                'SF Pro Display',
                                                fontWeight:
                                                FontWeight.w400)),
                                        TextSpan(
                                            text: "msg_lease_enter_your"
                                                .tr,
                                            style: TextStyle(
                                                color:
                                                appTheme.black900,
                                                fontSize:
                                                getFontSize(17),
                                                fontFamily:
                                                'SF Pro Display',
                                                fontWeight:
                                                FontWeight.w400))
                                      ]),
                                      textAlign: TextAlign.center)),
                             Expanded(
                               child: SizedBox(
                                 child: ListView(
                                   children: [

                                     Padding(
                                         padding: getPadding(top: 0),
                                         child: Column(
                                             crossAxisAlignment:
                                             CrossAxisAlignment.start,
                                             mainAxisAlignment:
                                             MainAxisAlignment.start,
                                             children: [
                                               Text("lbl_first_name".tr,
                                                   overflow:
                                                   TextOverflow.ellipsis,
                                                   textAlign: TextAlign.left,
                                                   style: TextThemeHelper
                                                       .bodyLargeGray600),
                                               CustomTextFormField(

                                                 controller: controller
                                                     .firstnameController,
                                                 margin: getMargin(top: 5),
                                                 contentPadding: getPadding(
                                                     left: 12,
                                                     top: 18,
                                                     right: 12,
                                                     bottom: 18),
                                                 textStyle: TextThemeHelper
                                                     .bodyLargeGray600,
                                                 hintText:
                                                 "msg_enter_first_name"
                                                     .tr,
                                                 hintStyle: TextThemeHelper
                                                     .bodyLargeGray600,
                                                 textInputAction:
                                                 TextInputAction.next,

                                                 validator: (value) {
                                                   if (value == null ||
                                                       value.isEmpty) {
                                                     return "Please enter valid password";
                                                   }
                                                   return null;
                                                 },)
                                             ])),
                                     Padding(
                                         padding: getPadding(top: 26),
                                         child: Column(
                                             crossAxisAlignment:
                                             CrossAxisAlignment.start,
                                             mainAxisAlignment:
                                             MainAxisAlignment.start,
                                             children: [
                                               Text("lbl_last_name".tr,
                                                   overflow:
                                                   TextOverflow.ellipsis,
                                                   textAlign: TextAlign.left,
                                                   style: TextThemeHelper
                                                       .bodyLargeGray600),
                                               CustomTextFormField(
                                                 controller: controller
                                                     .lastnameController,
                                                 margin: getMargin(top: 5),
                                                 contentPadding: getPadding(
                                                     left: 12,
                                                     top: 18,
                                                     right: 12,
                                                     bottom: 18),
                                                 textStyle: TextThemeHelper
                                                     .bodyLargeGray600,
                                                 hintText:
                                                 "lbl_enter_last_name"
                                                     .tr,
                                                 hintStyle: TextThemeHelper
                                                     .bodyLargeGray600,
                                                 textInputAction:
                                                 TextInputAction.next,
                                                 validator: (value) {
                                                   if (value == null || value.isEmpty) {
                                                     return "Please enter valid password";
                                                   }
                                                   return null;
                                                 },)
                                             ])),
                                     Padding(
                                         padding: getPadding(top: 26),
                                         child: Column(
                                             crossAxisAlignment:
                                             CrossAxisAlignment.start,
                                             mainAxisAlignment:
                                             MainAxisAlignment.start,
                                             children: [
                                               Text("lbl_email_address".tr,
                                                   overflow:
                                                   TextOverflow.ellipsis,
                                                   textAlign: TextAlign.left,
                                                   style: TextThemeHelper
                                                       .bodyLargeGray600),
                                               CustomTextFormField(
                                                   controller: controller
                                                       .emailController,
                                                   margin: getMargin(top: 5),
                                                   contentPadding: getPadding(
                                                       left: 12,
                                                       top: 18,
                                                       right: 12,
                                                       bottom: 18),
                                                   textStyle: TextThemeHelper
                                                       .bodyLargeGray600,
                                                   hintText:
                                                   "msg_enter_email_address"
                                                       .tr,
                                                   hintStyle: TextThemeHelper
                                                       .bodyLargeGray600,
                                                   textInputAction:
                                                   TextInputAction.next,
                                                   textInputType: TextInputType
                                                       .emailAddress,
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
                                             crossAxisAlignment:
                                             CrossAxisAlignment.start,
                                             mainAxisAlignment:
                                             MainAxisAlignment.start,
                                             children: [
                                               Text("lbl_password".tr,
                                                   overflow:
                                                   TextOverflow.ellipsis,
                                                   textAlign: TextAlign.left,
                                                   style: TextThemeHelper
                                                       .bodyLargeGray600),
                                               Obx(() => CustomTextFormField(
                                                   controller: controller
                                                       .passwordoneController,
                                                   margin: getMargin(top: 5),
                                                   contentPadding: getPadding(
                                                       left: 16,
                                                       top: 18,
                                                       bottom: 18),
                                                   textStyle: TextThemeHelper
                                                       .bodyLargeGray600,
                                                   hintText:
                                                   "lbl_enter_password".tr,
                                                   hintStyle: TextThemeHelper
                                                       .bodyLargeGray600,
                                                   textInputType: TextInputType
                                                       .visiblePassword,
                                                   suffix: InkWell(
                                                       onTap: () {
                                                         controller
                                                             .isShowPassword
                                                             .value =
                                                         !controller
                                                             .isShowPassword
                                                             .value;
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
                                                                   ? ImageConstant
                                                                   .imgEye
                                                                   : ImageConstant
                                                                   .imgEyeClose))),
                                                   suffixConstraints:
                                                   BoxConstraints(
                                                       maxHeight:
                                                       getVerticalSize(
                                                           56)),
                                                   validator: (value) {
                                                     if (value == null || value.isEmpty) {
                                                       return "Please enter your password.";
                                                     }
                                                     return null;
                                                   },
                                                   obscureText: controller
                                                       .isShowPassword.value))
                                             ])),
                                   ],
                                 ),
                               ),
                             ),
                              CustomElevatedButton(
                                  text: "lbl_sign_up".tr,
                                  margin: getMargin(top: 48),
                                  buttonStyle: ButtonThemeHelper
                                      .fillDeeppurpleA200
                                      .copyWith(
                                          fixedSize:
                                              MaterialStateProperty
                                                  .all<Size>(Size(
                                                      double.maxFinite,
                                                      getVerticalSize(
                                                          54)))),
                                  buttonTextStyle: TextThemeHelper
                                      .titleMediumPrimary_1,
                                  onTap: () {

                                    if(_formKey.currentState!.validate()){
                                    onTapSignup();}
                                  }),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtAlreadyhavean();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 64),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "msg_already_have_an2"
                                                        .tr,
                                                style: TextStyle(
                                                    color: appTheme
                                                        .black900,
                                                    fontSize:
                                                        getFontSize(17),
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight:
                                                        FontWeight
                                                            .w400)),
                                            TextSpan(
                                                text: " ",
                                                style: TextStyle(
                                                    color: appTheme
                                                        .black900,
                                                    fontSize:
                                                        getFontSize(18),
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight:
                                                        FontWeight
                                                            .w700)),
                                            TextSpan(
                                                text: "lbl_login2".tr,
                                                style: TextStyle(
                                                    color: appTheme
                                                        .deepPurpleA200,
                                                    fontSize:
                                                        getFontSize(18),
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight:
                                                        FontWeight
                                                            .w700))
                                          ]),
                                          textAlign: TextAlign.left)))
                            ]))))));
  }

  onTapSignup() {
   Get.back();
  }

  onTapTxtAlreadyhavean() {
   Get.back();
  }
}
