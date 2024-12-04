import 'controller/sign_up_fill_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/core/utils/validation_functions.dart';
import 'package:ai_app_flutter/widgets/custom_button.dart';
import 'package:ai_app_flutter/widgets/custom_floating_edit_text.dart';
import 'package:ai_app_flutter/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpFillScreen extends GetWidget<SignUpFillController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 20,
              top: 28,
              right: 20,
              bottom: 28,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_sign_up".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtAirbnbCerealWBd24,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    365,
                  ),
                  margin: getMargin(
                    left: 4,
                    top: 17,
                    right: 4,
                  ),
                  child: Text(
                    "msg_please_enter_your2".tr,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtBody.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.16,
                      ),
                    ),
                  ),
                ),
                CustomFloatingEditText(
                  focusNode: FocusNode(),
                  autofocus: true,
                  controller: controller.firstnameController,
                  labelText: "lbl_first_name".tr,
                  hintText: "lbl_bessie".tr,
                  margin: getMargin(
                    top: 41,
                  ),
                  validator: (value) {
                    if (!isText(value)) {
                      return "Please enter valid text";
                    }
                    return null;
                  },
                ),
                CustomFloatingEditText(
                  focusNode: FocusNode(),
                  autofocus: true,
                  controller: controller.lastnameController,
                  labelText: "lbl_last_name".tr,
                  hintText: "lbl_cooper".tr,
                  margin: getMargin(
                    top: 15,
                  ),
                  validator: (value) {
                    if (!isText(value)) {
                      return "Please enter valid text";
                    }
                    return null;
                  },
                ),
                CustomFloatingEditText(
                  focusNode: FocusNode(),
                  autofocus: true,
                  controller: controller.emailController,
                  labelText: "lbl_email_address".tr,
                  hintText: "msg_bessiecooper_gmail_com".tr,
                  margin: getMargin(
                    top: 15,
                  ),
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "Please enter valid email";
                    }
                    return null;
                  },
                ),
                Obx(
                  () => CustomFloatingEditText(
                    focusNode: FocusNode(),
                    autofocus: true,
                    controller: controller.passwordController,
                    labelText: "lbl_password".tr,
                    hintText: "lbl_password".tr,
                    margin: getMargin(
                      top: 15,
                    ),
                    padding: FloatingEditTextPadding.PaddingTB19,
                    fontStyle: FloatingEditTextFontStyle.AirbnbCerealWLt15,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    isObscureText: controller.isShowPassword.value,
                    suffix: InkWell(
                      onTap: () {
                        controller.isShowPassword.value =
                            !controller.isShowPassword.value;
                      },
                      child: Container(
                        margin: getMargin(
                          left: 16,
                          right: 16,
                        ),
                        child: CustomImageView(
                          svgPath: controller.isShowPassword.value
                              ? ImageConstant.imgIcShow
                              : ImageConstant.imgIcShow,
                        ),
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        65,
                      ),
                    ),
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "Please enter valid password";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                    right: 42,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomIconButton(
                        height: 24,
                        width: 24,
                        margin: getMargin(
                          bottom: 22,
                        ),
                        shape: IconButtonShape.RoundedBorder6,
                        padding: IconButtonPadding.PaddingAll2,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgIctick,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: getHorizontalSize(
                            297,
                          ),
                          margin: getMargin(
                            left: 10,
                            top: 3,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_i_agree_to_aiBotTalk".tr,
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'AirbnbCereal_W_Lt',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                TextSpan(
                                  text: " ",
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'AirbnbCereal_W_Md',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: getHorizontalSize(
                                      0.16,
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: "msg_public_agreement".tr,
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'AirbnbCereal_W_Lt',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  height: getVerticalSize(
                    56,
                  ),
                  text: "lbl_sign_up".tr,
                  margin: getMargin(
                    top: 50,
                    bottom: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: getPadding(
            left: 82,
            right: 81,
            bottom: 41,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "msg_already_have_an".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtBodyGray600.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.16,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 8,
                ),
                child: Text(
                  "lbl_log_in2".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtHeadline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
