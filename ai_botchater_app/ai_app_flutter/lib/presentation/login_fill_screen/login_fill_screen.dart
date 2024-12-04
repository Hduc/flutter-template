import 'controller/login_fill_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/core/utils/validation_functions.dart';
import 'package:ai_app_flutter/widgets/custom_button.dart';
import 'package:ai_app_flutter/widgets/custom_checkbox.dart';
import 'package:ai_app_flutter/widgets/custom_floating_edit_text.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginFillScreen extends GetWidget<LoginFillController> {
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
              top: 24,
              right: 20,
              bottom: 24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgFrameGray400,
                  height: getVerticalSize(
                    108,
                  ),
                  width: getHorizontalSize(
                    77,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 18,
                  ),
                  child: Text(
                    "lbl_welcome_back".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtAirbnbCerealWBd24,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 21,
                  ),
                  child: Text(
                    "msg_please_enter_your".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
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
                  controller: controller.emailController,
                  labelText: "lbl_email_address".tr,
                  hintText: "msg_bessiecooper_gmail_com".tr,
                  margin: getMargin(
                    top: 39,
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
                    hintText: "lbl".tr,
                    margin: getMargin(
                      top: 15,
                    ),
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
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => CustomCheckbox(
                          text: "lbl_remebmer_me".tr,
                          iconSize: getHorizontalSize(
                            24,
                          ),
                          value: controller.isCheckbox.value,
                          fontStyle: CheckboxFontStyle.AirbnbCerealWLt14,
                          onChange: (value) {
                            controller.isCheckbox.value = value;
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 3,
                        ),
                        child: Text(
                          "msg_forgot_passsword".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBody.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.16,
                            ),
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
                  text: "lbl_login".tr,
                  margin: getMargin(
                    top: 47,
                    bottom: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: getPadding(
            left: 85,
            right: 84,
            bottom: 41,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  bottom: 1,
                ),
                child: Text(
                  "msg_don_t_have_an_account".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtBodyGray600.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.16,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 8,
                  top: 1,
                ),
                child: Text(
                  "lbl_sign_up".tr,
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
