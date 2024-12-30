import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/reset_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';
import 'package:hair_salon_app/widgets/custom_text_form_field.dart';
import 'package:hair_salon_app/presentation/password_has_been_change_dialog/password_has_been_change_dialog.dart';
import 'package:hair_salon_app/presentation/password_has_been_change_dialog/controller/password_has_been_change_controller.dart';

class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Get.back();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_reset_password".tr),
            styleType: Style.bgFillWhiteA700),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  margin: getMargin(left: 16, top: 6, right: 16),
                  child: Text(
                      "Please enter the email address you used to create your account, and we'll send you a code to reset your password.",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtBody))),
          Padding(
              padding: getPadding(left: 16, top: 35, right: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("msg_create_your_new".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBody),
                    Obx(
                      () => CustomTextFormField(
                        hintText: "New password",
                        controller: controller.group3330Controller,
                        margin: getMargin(top: 10),
                        isObscureText:
                            controller.isNewPasswordVisible.value,
                        suffix: CustomImageView(
                          onTap: () {
                            if (controller.isNewPasswordVisible.value) {
                              controller.isNewPasswordVisible.value = false;
                            } else {
                              controller.isNewPasswordVisible.value = true;
                            }
                          },
                          svgPath: controller.isNewPasswordVisible.value
                              ? Constant.imagePath + "eye_close.svg"
                              : Constant.imagePath + "eye.svg",
                          height: getVerticalSize(24),
                          width: getVerticalSize(24),
                          margin: getMargin(right: 16),
                        ),
                        // suffixConstraints: BoxConstraints(
                        //     maxWidth: getVerticalSize(40),
                        //     maxHeight: getHorizontalSize(61),
                        //     minHeight: getVerticalSize(61)),
                      ),
                    )
                  ])),
          Padding(
              padding: getPadding(left: 16, top: 24, right: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("msg_confirm_your_new".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBody),
                    Obx(
                      () =>  CustomTextFormField(
                        hintText: "Confirm New password",
                        controller: controller.group3331Controller,
                        margin: getMargin(top: 10),
                        textInputAction: TextInputAction.done,
                        isObscureText:
                            controller.isConfirmPasswordVisible.value,
                        suffix: CustomImageView(
                          onTap: () {
                            if (controller.isConfirmPasswordVisible.value) {
                              controller.isConfirmPasswordVisible.value =
                                  false;
                            } else {
                              controller.isConfirmPasswordVisible.value =
                                  true;
                            }
                          },
                          svgPath: controller.isConfirmPasswordVisible.value
                              ? Constant.imagePath + "eye_close.svg"
                              : Constant.imagePath + "eye.svg",
                          height: getVerticalSize(24),
                          width: getVerticalSize(24),
                          margin: getMargin(right: 16),
                        ),
                        // suffixConstraints: BoxConstraints(
                        //     maxWidth: getVerticalSize(40),
                        //     maxHeight: getHorizontalSize(61),
                        //     minHeight: getVerticalSize(61)),
                      ),
                    )
                  ])),
          CustomButton(
              height: getVerticalSize(53),
              text: "lbl_reset_password".tr,
              margin: getMargin(left: 16, top: 30, right: 16),
              onTap: () {
                onTapResetpassword1();
              })
        ]));
  }

  onTapResetpassword() {
    Get.toNamed(
      AppRoutes.verificationScreen,
    );
  }

  onTapResetpassword1() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.only(left: 0),
      content: PasswordHasBeenChangeDialog(
        Get.put(
          PasswordHasBeenChangeController(),
        ),
      ),
    ));
  }
}
