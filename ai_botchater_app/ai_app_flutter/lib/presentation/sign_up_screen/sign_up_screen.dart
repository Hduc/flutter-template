import 'controller/sign_up_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/core/utils/validation_functions.dart';
import 'package:ai_app_flutter/widgets/custom_button.dart';
import 'package:ai_app_flutter/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
                key: _formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: getVerticalSize(24),
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_sign_up".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtAirbnbCerealWBd24)),
                      Container(
                          margin: getMargin(left: 20, top: 16, right: 20),
                          child: Text("msg_please_enter_your2".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtBody.copyWith(
                                  letterSpacing: getHorizontalSize(0.16)))),
                      Padding(
                        padding: getPadding(left: 20, right: 20),
                        child: CustomTextFormField(
                            controller: controller.firstnameController,
                            hintText: "lbl_first_name".tr,
                            margin: getMargin(top: 40),
                            variant: TextFormFieldVariant.OutlineGray30001,
                            suffix: SizedBox(height: getVerticalSize(56)),
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(56)),
                            validator: (value) {
                              if (!isText(value)) {
                                return "Please enter valid text";
                              }
                              return null;
                            }),
                      ),
                      Padding(
                        padding: getPadding(left: 20, right: 20),
                        child: CustomTextFormField(
                            controller: controller.lastnameController,
                            hintText: "lbl_last_name".tr,
                            margin: getMargin(top: 24),
                            suffix: SizedBox(height: getVerticalSize(56)),
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(56)),
                            variant: TextFormFieldVariant.OutlineGray30001,
                            validator: (value) {
                              if (!isText(value)) {
                                return "Please enter valid text";
                              }
                              return null;
                            }),
                      ),
                      Padding(
                        padding: getPadding(left: 20, right: 20),
                        child: CustomTextFormField(
                            controller: controller.emailController,
                            hintText: "lbl_email_address".tr,
                            margin: getMargin(top: 24),
                            suffix: SizedBox(height: getVerticalSize(56)),
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(56)),
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
                            padding: getPadding(left: 20, right: 20),
                            child: CustomTextFormField(
                                controller: controller.passwordController,
                                hintText: "lbl_password".tr,
                                margin: getMargin(top: 24),
                                variant: TextFormFieldVariant.OutlineGray30001,
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
                                isObscureText: controller.isShowPassword.value),
                          )),
                      Padding(
                          padding: getPadding(top: 16, right: 20, left: 20),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Obx(
                                  () => CustomImageView(
                                    onTap: () {
                                      if (controller.isCheckbox.value == true) {
                                        controller.isCheckbox.value = false;
                                      } else {
                                        controller.isCheckbox.value = true;
                                      }
                                    },
                                    svgPath: Constant.imagePath +
                                        "${controller.isCheckbox.value ? 'uncheck.svg' : 'check.svg'}",
                                    height: getVerticalSize(24),
                                    width: getHorizontalSize(24),
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                  margin: getMargin(left: 10),
                                  child: Text(
                                      "I agree to aiBotTalk public Agreement, Terms, & Privacy Policy.",
                                      style: TextStyle(
                                          color: ColorConstant.black900,
                                          fontSize: getFontSize(14),
                                          fontFamily: 'AirbnbCereal_W_Lt',
                                          fontWeight: FontWeight.w300,
                                          letterSpacing:
                                              getHorizontalSize(0.16))),
                                ))
                              ])),
                      CustomButton(
                        onTap: () {
                          PrefUtils.setIsLogin(false);
                          Get.offAllNamed(
                            AppRoutes.homeOneContainerScreen,
                          );
                        },
                          height: getVerticalSize(56),
                          text: "lbl_sign_up".tr,
                          margin: getMargin(top: 48,right: 20,left: 20))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(bottom: 8),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("msg_already_have_an".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtBodyGray600
                          .copyWith(letterSpacing: getHorizontalSize(0.16))),
                  GestureDetector(
                      onTap: () {
                        onBackPressed();
                      },
                      child: Padding(
                          padding: getPadding(left: 8),
                          child: Text("lbl_log_in2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtHeadline)))
                ]))));
  }

  onBackPressed() {
    Get.back();
  }
}
