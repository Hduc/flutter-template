import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/forget_password1_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/core/utils/validation_functions.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';
import 'package:hair_salon_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgetPassword1Screen extends GetWidget<ForgetPassword1Controller> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(81),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getVerticalSize(24),
                    width: getVerticalSize(26),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 28, bottom: 28),
                    onTap: () {
                      // onTapArrowleft();
                      Get.back();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Forgot Password"),
                styleType: Style.bgFillWhiteA700),
            body: Form(
                key: _formKey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              margin: getMargin(left: 16, top: 6, right: 16),
                              child: Text(
                                  "Please enter the email address you used to create your account, and we'll send you a code to reset your password.",
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBody))),
                      GestureDetector(
                          onTap: () {
                            onTapColumntitle();
                          },
                          child: Padding(
                              padding: getPadding(left: 16, top: 35, right: 16),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_email".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBody),
                                    CustomTextFormField(
                                        controller: controller.emailController,
                                        hintText: "lbl_email_address".tr,
                                        margin: getMargin(top: 10),
                                        textInputAction: TextInputAction.done,
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
                                  ]))),
                      CustomButton(
                          height: getVerticalSize(53),
                          text: "lbl_send".tr,
                          margin: getMargin(left: 16, top: 25, right: 16),
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              onTapSend();
                            }
                          })
                    ]))));
  }

  onTapForgotpassword() {
    Get.toNamed(
      AppRoutes.logInScreen,
    );
  }

  onTapColumntitle() {
    // TODO: implement Actions
  }

  onTapSend() {
    Get.toNamed(
      AppRoutes.verificationOneScreen,
    );
  }
}
