import 'controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/core/utils/validation_functions.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_button.dart';
import 'package:game_store_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return false;
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
                  onTap: () {
                    onTapArrowleft();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_forgot_password".tr),
              styleType: Style.bgFillWhiteA700),
          body: SafeArea(
            child: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 20, top: 25, right: 20, bottom: 25),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: getHorizontalSize(331),
                              margin: getMargin(left: 29, right: 27),
                              child: Text("msg_please_enter_the".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtBodyGray600)),
                          CustomTextFormField(
                              fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
                              controller: controller.emailController,
                              hintText: "msg_johnabram_gmail_com".tr,
                              margin: getMargin(top: 52),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 16, right: 7, bottom: 16),
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
                          CustomButton(
                              height: getVerticalSize(56),
                              text: "lbl_continue".tr,
                              margin: getMargin(top: 48, bottom: 5),
                              onTap: () {
                               if(_formKey.currentState!.validate()){
                                onTapContinue();
                               }

                              })
                        ]))),
          )),
    );
  }

  onTapContinue() {
    Get.toNamed(
      AppRoutes.otpVarificationScreen,
    );
  }

  onTapArrowleft() {
    Get.back();
  }
}
