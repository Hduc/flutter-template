import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/core/utils/validation_functions.dart';
import 'package:game_store_app/widgets/custom_button.dart';
import 'package:game_store_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return true;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.whiteA700,
          body: SafeArea(
            child: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 20, top: 32, right: 20, bottom: 32),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgCut,
                              height: getVerticalSize(93),
                              width: getHorizontalSize(88)),
                          Padding(
                              padding: getPadding(top: 27),
                              child: Text("lbl_sign_up2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtAeonikBold27)),
                          Padding(
                              padding: getPadding(top: 15),
                              child: Text("msg_please_enter_your4".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBodyGray600)),
                          CustomTextFormField(
                            fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
                              controller: controller.firstnameController,
                              hintText: "lbl_first_name".tr,
                              margin: getMargin(top: 53),
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 16, right: 8, bottom: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgUser)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56)),

                              validator: (value) {
                               if (value == null ||value.isEmpty) {
                                return "Please enter First name";
                               }
                               return null;
                              },),
                          CustomTextFormField(
                            fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
                              controller: controller.lastnameController,
                              hintText: "lbl_last_name".tr,
                              margin: getMargin(top: 16),
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 16, right: 8, bottom: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgUser)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56)),
                           validator: (value) {
                            if (value == null ||value.isEmpty) {
                             return "Please enter Last name";
                            }
                            return null;
                           },),
                          CustomTextFormField(
                              fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
                              controller: controller.emailController,
                              hintText: "lbl_email_address".tr,
                              margin: getMargin(top: 16),
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 16, right: 8, bottom: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCheckmark)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Obx(() => CustomTextFormField(
                              fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
                              controller: controller.passwordController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(top: 16),
                              padding: TextFormFieldPadding.PaddingT19_1,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 16, right: 8, bottom: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56)),
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
                                          svgPath:
                                              controller.isShowPassword.value
                                                  ? ImageConstant.imgEye
                                                  : ImageConstant.imgEye))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56)),
                              validator: (value) {
                                if (value == null ||value.isEmpty) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: controller.isShowPassword.value)),
                          CustomButton(
                              height: getVerticalSize(56),
                              text: "lbl_sign_up2".tr,
                              margin: getMargin(top: 48),
                              onTap: () {
                               if(_formKey.currentState!.validate()){
                                Get.offAllNamed(AppRoutes.loginScreen);
                                // Get.toNamed(
                                //  AppRoutes.exploreGamesScreen,
                                // );
                               }
                              }),
                          Spacer(),
                          GestureDetector(
                              onTap: () {
                                onTapTxtAlreadyhavean();
                              },
                              child: Padding(
                                  padding: getPadding(bottom: 13),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_already_have_an2".tr,
                                            style: TextStyle(
                                                color: ColorConstant.gray600,
                                                fontSize: getFontSize(17),
                                                fontFamily: 'Aeonik',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "lbl_login2".tr,
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.lightBlueA700,
                                                fontSize: getFontSize(18),
                                                fontFamily: 'Aeonik',
                                                fontWeight: FontWeight.w700))
                                      ]),
                                      textAlign: TextAlign.left)))
                        ]))),
          )),
    );
  }

  onTapSignup() {
    Get.offAllNamed(AppRoutes.loginScreen);
  }

  onTapTxtAlreadyhavean() {
    Get.offAllNamed(AppRoutes.loginScreen);
  }
}
