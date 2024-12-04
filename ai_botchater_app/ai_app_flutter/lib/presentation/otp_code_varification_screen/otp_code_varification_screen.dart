import 'controller/otp_code_varification_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/core/utils/validation_functions.dart';
import 'package:ai_app_flutter/widgets/custom_button.dart';
import 'package:ai_app_flutter/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:ai_app_flutter/presentation/reset_password_successful_dialog/reset_password_successful_dialog.dart';
import 'package:ai_app_flutter/presentation/reset_password_successful_dialog/controller/reset_password_successful_controller.dart';

// ignore_for_file: must_be_immutable
class OtpCodeVarificationScreen
    extends GetWidget<OtpCodeVarificationController> {
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
                                    child: Text("msg_create_new_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtAirbnbCerealWBd24))
                              ]),
                        )
                      ]),
                      Container(
                          margin: getMargin(left: 20, top: 16, right: 20),
                          child: Text("msg_create_your_new".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtBody.copyWith(
                                  letterSpacing: getHorizontalSize(0.16)))),
                      Obx(() => Padding(
                        padding: getPadding(left: 20, right: 20),
                        child: CustomTextFormField(
                            controller: controller.newpasswordController,
                            hintText: "lbl_new_password".tr,
                            margin: getMargin(top: 40),
                            variant: TextFormFieldVariant.OutlineGray30001,
                            padding: TextFormFieldPadding.PaddingT17_1,
                            textInputType: TextInputType.visiblePassword,
                            suffix: InkWell(
                                onTap: () {
                                  controller.isShowPassword.value =
                                      !controller.isShowPassword.value;
                                },
                                child: Container(
                                    margin: getMargin(
                                        left: 16, top: 16, right: 16, bottom: 16),
                                    child: CustomImageView(
                                        svgPath: controller.isShowPassword.value
                                            ? ImageConstant.imgIcShow
                                            : ImageConstant.imgIcShow))),
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(56)),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "Please enter valid password";
                              }
                              return null;
                            },
                            isObscureText: controller.isShowPassword.value),
                      )),
                      Obx(() => Padding(
                        padding: getPadding(left: 20, right: 20),
                        child: CustomTextFormField(
                            controller: controller.confirmpasswordController,
                            hintText: "msg_confirm_password".tr,
                            margin: getMargin(top: 24),
                            variant: TextFormFieldVariant.OutlineGray30001,
                            padding: TextFormFieldPadding.PaddingT17_1,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            suffix: InkWell(
                                onTap: () {
                                  controller.isShowPassword1.value =
                                      !controller.isShowPassword1.value;
                                },
                                child: Container(
                                    margin: getMargin(
                                        left: 16, top: 16, right: 16, bottom: 16),
                                    child: CustomImageView(
                                        svgPath: controller.isShowPassword1.value
                                            ? ImageConstant.imgIcShow
                                            : ImageConstant.imgIcShow))),
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(56)),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "Please enter valid password";
                              }
                              return null;
                            },
                            isObscureText: controller.isShowPassword1.value),
                      )),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_save".tr,
                          margin: getMargin(top: 48, left: 20, right: 20),
                          onTap: () {
                            navigateResetPasswordDialog();
                          })
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  navigateResetPasswordDialog() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.only(left: 0),
      content: ResetPasswordSuccessfulDialog(
        Get.put(
          ResetPasswordSuccessfulController(),
        ),
      ),
    ));
  }
}
