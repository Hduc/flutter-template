import 'controller/edit_profile_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/core/utils/validation_functions.dart';
import 'package:ai_app_flutter/widgets/app_bar/appbar_image.dart';
import 'package:ai_app_flutter/widgets/app_bar/appbar_title.dart';
import 'package:ai_app_flutter/widgets/app_bar/custom_app_bar.dart';
import 'package:ai_app_flutter/widgets/custom_button.dart';
import 'package:ai_app_flutter/widgets/custom_floating_edit_text.dart';
import 'package:ai_app_flutter/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(65),
            leadingWidth: 66,
            leading: AppbarImage(
                height: getSize(24),
                width: getSize(24),
                svgPath: ImageConstant.imgArrowleft,
                margin: getMargin(left: 20, top: 21, bottom: 20, right: 20),
                onTap: () {
                  onTapArrowleft48();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_edit_profile".tr),
            styleType: Style.bgFillWhiteA700),
        body: SafeArea(
          child: Form(
              key: _formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin: getMargin(top: 24),
                        height: getSize(100),
                        width: getSize(100),
                        child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgEllipse34,
                                  height: getSize(100),
                                  width: getSize(100),
                                  alignment: Alignment.center),
                              CustomIconButton(
                                  height: 32,
                                  width: 32,
                                  alignment: Alignment.bottomRight,
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgIccamera))
                            ])),
                    CustomFloatingEditText(
                        controller: controller.firstnameController,
                        labelText: "lbl_first_name".tr,
                        hintText: "lbl_bessie".tr,
                        margin: getMargin(top: 57, right: 20, left: 20),
                        validator: (value) {
                          if (!isText(value)) {
                            return "Please enter valid text";
                          }
                          return null;
                        }),
                    CustomFloatingEditText(
                        controller: controller.lastnameController,
                        labelText: "lbl_last_name".tr,
                        hintText: "lbl_cooper".tr,
                        margin: getMargin(top: 24, right: 20, left: 20),
                        validator: (value) {
                          if (!isText(value)) {
                            return "Please enter valid text";
                          }
                          return null;
                        }),
                    CustomFloatingEditText(
                        controller: controller.emailController,
                        labelText: "lbl_email_address".tr,
                        hintText: "msg_bessiecooper_gmail_com".tr,
                        margin: getMargin(top: 24, right: 20, left: 20),
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null ||
                              (!isValidEmail(value, isRequired: true))) {
                            return "Please enter valid email";
                          }
                          return null;
                        })
                  ])),
        ),
        bottomNavigationBar: CustomButton(
            height: getVerticalSize(56),
            text: "lbl_save".tr,
            margin: getMargin(left: 20, right: 20, bottom: 24),
            onTap: () {
              onBackPressed();
            }));
  }

  onBackPressed() {
    Get.back();
  }

  onTapArrowleft48() {
    Get.back();
  }
}
