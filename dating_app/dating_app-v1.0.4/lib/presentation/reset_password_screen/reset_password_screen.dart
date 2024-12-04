import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:dating_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../core/utils/appbar.dart';
import 'controller/reset_password_controller.dart';

class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(

        backgroundColor: Colors.white,

        body: GetBuilder<ResetPasswordController>(builder: (controller) {
          return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomAppBarText(
                  title: 'Reset password',
                ),
                Divider(
                  color: Color(0xFFE7E7E7),
                  thickness: getSize(1.5),
                ),
                Padding(
                  padding: EdgeInsets.only(top: getSize(2)),
                  child: Text("msg_please_provide_the".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyLarge),
                ),
                Padding(
                    padding: getPadding(top: getSize(24)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getSize(16)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("lbl_new_password".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodyLargeGray600),
                            Obx(() => CustomTextFormField(
                                textStyle: theme.textTheme.bodyLarge,
                                autofocus: false,
                                controller: controller.newPassController,
                                margin: getMargin(top: 6,),
                                hintText: "Enter New Password".tr,
                                textInputAction: TextInputAction.done,
                                hintStyle: CustomTextStyles.bodyLargeGray600,
                                textInputType: TextInputType.visiblePassword,
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
                                                ? ImageConstant.imgIcEye
                                                : ImageConstant.imgIcEye,color: Colors.black,))),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(57)),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter valid password";
                                  }
                                  return null;
                                },

                                obscureText: controller.isShowPassword.value,
                                contentPadding:
                                getPadding( top: 18, bottom: 18))),
                          ]),
                    )),
                Padding(
                    padding: getPadding(top: getSize(24)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getSize(16)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("msg_confirm_password".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodyLargeGray600),
                            Obx(() => CustomTextFormField(
                                textStyle: theme.textTheme.bodyLarge,
                                autofocus: false,
                                controller: controller.confirmPassController,
                                margin: getMargin(top: 6,),
                                hintText: "Enter Confirm Password".tr,
                                textInputAction: TextInputAction.done,
                                hintStyle: CustomTextStyles.bodyLargeGray600,
                                textInputType: TextInputType.visiblePassword,
                                suffix: InkWell(
                                    onTap: () {
                                      controller.isShowPassword1.value =
                                      !controller.isShowPassword1.value;
                                    },
                                    child: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 16,
                                            right: 16,
                                            bottom: 16),
                                        child: CustomImageView(
                                          svgPath:
                                          controller.isShowPassword1.value
                                              ? ImageConstant.imgIcEye
                                              : ImageConstant.imgIcEye,color: Colors.black,))),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(57)),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter valid password";
                                  }
                                  return null;
                                },

                                obscureText: controller.isShowPassword1.value,
                                contentPadding:
                                getPadding( top: 18, bottom: 18))),

                          ]),
                    )
                ),
                CustomElevatedButton(
                    text: "lbl_reset_password".tr,

                    margin: getMargin(top: 40, left: 16, right: 16),
                    buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getSize(54)))),
                    buttonTextStyle: theme.textTheme.titleMedium!,
                    onTap: () {
                      onTapResetpassword();
                    })
              ]);
        }, init: ResetPasswordController(),));
  }


  onTapResetpassword() {
    Get.toNamed(
      AppRoutes.resetPasswordSuccessScreen,
    );
  }
}
