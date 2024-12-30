import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../password_changed_popup_screen/password_changed_popup_screen.dart';
import 'controller/reset_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/core/utils/validation_functions.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_button.dart';
import 'package:game_store_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
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
          appBar: CustomAppBar(
              height: getVerticalSize(66),
              leadingWidth: 44,
              leading: AppbarImage(
                  height: getSize(24),
                  width: getSize(24),
                  svgPath: ImageConstant.imgArrowleftBlack900,
                  margin: getMargin(left: 20, top: 17, bottom: 25),
                  onTap: () {}),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_reset_password".tr),
              styleType: Style.bgFillWhiteA700),
          body: SafeArea(
            child: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 20, top: 25, right: 20, bottom: 25),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Container(
                              width: getHorizontalSize(371),
                              margin: getMargin(left: 9, right: 7),
                              child: Text("msg_please_enter_the3".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtBodyGray600)),
                          Obx(() => CustomTextFormField(
                              fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
                              controller: controller.newpasswordController,
                              hintText: "lbl_new_password".tr,
                              margin: getMargin(top: 52),
                              padding: TextFormFieldPadding.PaddingT19_1,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 16, right: 8, bottom: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: getVerticalSize(56)),
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
                                          svgPath: controller.isShowPassword.value
                                              ? ImageConstant.imgEye
                                              : ImageConstant.imgEye))),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: getVerticalSize(56)),
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: controller.isShowPassword.value)),
                          Obx(() => CustomTextFormField(
                              fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
                              controller: controller.confirmpasswordController,
                              hintText: "msg_confirm_password".tr,
                              margin: getMargin(top: 16),
                              padding: TextFormFieldPadding.PaddingT19_1,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 16, right: 8, bottom: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: getVerticalSize(56)),
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
                                                  ? ImageConstant.imgEye
                                                  : ImageConstant.imgEye))),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: getVerticalSize(56)),
                              validator: (value) {
                                if (value == null ||value.isEmpty) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: controller.isShowPassword1.value)),
                          CustomButton(
                              height: getVerticalSize(56),
                              text: "lbl_save".tr,
                              margin: getMargin(top: 48, bottom: 5),
                              onTap: () {
                                if (_formKey.currentState!.validate()) {
                                  onTapSave(context);
                                }
                              })
                        ]))),
          )),
    );
  }

  onTapSave(context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          insetPadding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            contentPadding:
            EdgeInsets.zero,
            content: PasswordChangedPopupScreen(),
            );
      },
    );



    // Get.toNamed(
    //   AppRoutes.passwordChangedPopupScreen,
    // );
  }

  onTapResetpassword() {
    Get.toNamed(
      AppRoutes.otpVarificationFillScreen,
    );

  }
}
