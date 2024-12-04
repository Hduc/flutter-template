import 'controller/reset_password_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/core/utils/validation_functions.dart';
import 'package:ai_app_flutter/widgets/custom_button.dart';
import 'package:ai_app_flutter/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
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
                      Stack(children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowleft,
                            height: getSize(24),
                            width: getSize(24),
                            margin: getMargin(top: 21, left: 20),
                            onTap: () {
                              onTapImgArrowleft();
                            }),
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    margin: getMarginOrPadding(top: 24),
                                    svgPath: ImageConstant.imgFrameGray400,
                                    height: getVerticalSize(108),
                                    width: getHorizontalSize(77)),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Text("msg_forgot_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtAirbnbCerealWBd24))
                              ]),
                        )
                      ]),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: getMargin(left: 20, top: 16, right: 20),
                            child: Text("msg_please_enter_your3".tr,
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtBody.copyWith(
                                    letterSpacing: getHorizontalSize(0.16)))),
                      ),
                      Padding(
                        padding: getPadding(left: 20, right: 20),
                        child: CustomTextFormField(
                            controller: controller.emailController,
                            hintText: "lbl_email_address".tr,
                            margin: getMargin(top: 40),
                            variant: TextFormFieldVariant.OutlineGray30001,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "Please enter valid email";
                              }
                              return null;
                            }),
                      ),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_continue".tr,
                          margin: getMargin(top: 48, left: 20, right: 20),
                          onTap: () {
                            navigateVarifiationScreen();
                          })
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  navigateVarifiationScreen() {
    Get.toNamed(
      AppRoutes.otpCodeVarificationScreen,
    );
  }
}
