import 'controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/core/utils/validation_functions.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_salary_management_app/widgets/custom_elevated_button.dart';
import 'package:flutter_salary_management_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: _buildAppBar(),
        body: SafeArea(
          child: Form(
              key: _formKey,
              child: Column(children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20.v),
                  // decoration: AppDecoration.outlineGray300,
                  decoration: BoxDecoration(
                    // color: appTheme.gray200,
                    border: Border(
                      bottom: BorderSide(
                        color: appTheme.gray200,
                        width: 1.h,
                      ),
                    ),
                  ),
                  child: CustomAppBar(
                    leading: AppbarLeadingImage(
                                imagePath: ImageConstant.imgArrowLeft,
                                // margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
                                onTap: () {
                                  onTapArrowLeft();
                                }),
                    centerTitle: true,
                    title: AppbarSubtitle(
                      text: "lbl_forgot_password".tr,
                    ),
                  ),
                ),
                Expanded(child: Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
                  child: Column(
                    children: [
                      Text("msg_enter_your_email2".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge!
                              .copyWith(height: 1.47)),
                      SizedBox(height: 23.v),
                      _buildMasterUsername(),
                      SizedBox(height: 30.v),
                      CustomElevatedButton(
                          text: "lbl_send".tr,
                          onPressed: () {
                            if(_formKey.currentState!.validate()){

                              onTapSend();
                            }
                          }),
                      SizedBox(height: 5.v)
                    ],
                  ),
                ))

              ])),
        ));
  }

  /// Section Widget
  // PreferredSizeWidget _buildAppBar() {
  //   return CustomAppBar(
  //       leadingWidth: 40.h,
  //       leading: AppbarLeadingImage(
  //           imagePath: ImageConstant.imgArrowLeft,
  //           margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
  //           onTap: () {
  //             onTapArrowLeft();
  //           }),
  //       centerTitle: true,
  //       title: AppbarSubtitle(text: "lbl_forgot_password".tr),
  //       styleType: Style.bgOutline);
  // }

  /// Section Widget
  Widget _buildMasterUsername() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email_address".tr, style: theme.textTheme.bodyLarge),
      SizedBox(height: 5.v),
      CustomTextFormField(
          controller: controller.emailController,
          hintText: "enter your email address".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          })
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the verificationScreen when the action is triggered.
  onTapSend() {
    Get.toNamed(
      AppRoutes.verificationScreen,
    );
  }
}
