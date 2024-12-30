import 'package:flutter_salary_management_app/presentation/sign_up_screen/custom_country_piker.dart';

import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/core/utils/validation_functions.dart';
import 'package:flutter_salary_management_app/widgets/custom_elevated_button.dart';
import 'package:flutter_salary_management_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Form(
              key: formKey,
              child: Container(
                  width: double.maxFinite,
                  padding:
                  EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                  child: Column(children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("lbl_sign_up2".tr,
                            style: theme.textTheme.headlineMedium)),
                    SizedBox(height: 14.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("msg_unlock_your_potential".tr,
                            style: theme.textTheme.bodyLarge)),
                    SizedBox(height: 26.v),
                  Expanded(child: ListView(children: [
                    _buildMasterUsername(),
                    SizedBox(height: 18.v),
                    _buildMasterUsername1(context),
                    SizedBox(height: 18.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("lbl_phone_number".tr,
                            style: theme.textTheme.bodyLarge)),
                    SizedBox(height: 5.v),
                    _buildPhoneNumber(),
                    SizedBox(height: 18.v),
                    _buildMasterUsername2(),
                    SizedBox(height: 30.v),
                    _buildSignUp(),
                    SizedBox(height: 23.v),
                    _buildContinueWith(),
                    SizedBox(height: 23.v),
                    _buildGoogle1(),
                    SizedBox(height: 72.v),
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Center(
                          child: RichText(

                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_already".tr,
                                    style: theme.textTheme.bodyLarge),
                                TextSpan(
                                    text: "msg_have_an_account".tr,
                                    style: theme.textTheme.bodyLarge),
                                TextSpan(
                                    text: "lbl_sign_in".tr,
                                    style: CustomTextStyles.titleMediumPrimary)
                              ]),
                              textAlign: TextAlign.left),
                        )),
                    SizedBox(height: 5.v)
                  ],))
                  ]))),
        ));
  }

  /// Section Widget
  Widget _buildFullName() {
    return CustomTextFormField(
      textInputAction: TextInputAction.next,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "please enter full name".tr;
          }
          return null;
        },
        controller: controller.fullNameController,
        hintText: "enter full name".tr);
  }

  /// Section Widget
  Widget _buildMasterUsername() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_full_name".tr, style: theme.textTheme.bodyLarge),
      SizedBox(height: 5.v),
      _buildFullName()
    ]);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(

        textInputAction: TextInputAction.next,
        controller: controller.emailController,
        hintText: "enter email address".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildMasterUsername1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email_address".tr, style: theme.textTheme.bodyLarge),
      SizedBox(height: 5.v),
      _buildEmail(context)
    ]);
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return CustomTextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "please enter phone number".tr;
        }
        return null;
      },
      prefix: GestureDetector(
        child: CustomCountryCodePicker(

          initialSelection: "+91",padding: EdgeInsets.zero,
showCountryOnly: true,alignLeft: false,showDropDownButton: true,
          onChanged: (value) {
            controller.countryCode.value = value.toString();
            print("value===$value");

          },),
      ),
        textInputAction: TextInputAction.next,
        controller: controller.phoneNumberController,
        hintText: "enter phone number ".tr,
        textInputType: TextInputType.phone,
        );
    //   Obx(() =>
    //     CustomPhoneNumber(
    //
    //     country: controller.selectedCountry.value,
    //     controller: controller.phoneNumberController,
    //     onTap: (Country value) {
    //       controller.selectedCountry.value = value;
    //     })
    // );
  }

  /// Section Widget
  Widget _buildPassword() {
    return Obx(() => CustomTextFormField(
        controller: controller.passwordController,
        textInputAction: TextInputAction.done,
        hintText: "enter your password".tr,
        validator: (value) {
          if(value!.isEmpty){
            return "please enter password".tr;
          }else if(value.length<6){
            return "your password must be 6 characters".tr;
          }
          return null;
        },
        suffix: GestureDetector(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 15.v),
                child: CustomImageView(
                    imagePath: controller.isShowPassword.value?ImageConstant.imgIcEye:ImageConstant.show,
                    height: 24.adaptSize,
                    width: 24.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 54.v),
        obscureText: controller.isShowPassword.value));
  }

  /// Section Widget
  Widget _buildMasterUsername2() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_password".tr, style: theme.textTheme.bodyLarge),
      SizedBox(height: 5.v),
      _buildPassword()
    ]);
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomElevatedButton(
        text: "lbl_sign_up2".tr,
        onPressed: () {
          if(formKey.currentState!.validate()){
            onTapSignUp();
            PrefUtils.setLogin(false);
            controller.fullNameController.clear();
            controller.emailController.clear();
            controller.phoneNumberController.clear();
            controller.passwordController.clear();
          }

        });
  }

  /// Section Widget
  Widget _buildContinueWith() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.symmetric(vertical: 9.v),
          child: SizedBox(width: 136.h, child: Divider())),
      Text("msg_or_continue_with".tr, style: CustomTextStyles.bodyLarge16_1),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 9.v),
          child: SizedBox(width: 137.h, child: Divider()))
    ]);
  }



  /// Section Widget
  Widget _buildGoogle1() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(

              height: 56.v,
              decoration: ShapeDecoration(
                color: Color(0xFFF8F8F8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                mainAxisAlignment:  MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.google,
                    height: 24.adaptSize,
                    width: 24.adaptSize,

                  ),
                  SizedBox(width: 8.h),
                  Text(
                    'Google',
                    style: TextStyle(
                      color: theme.colorScheme.onSecondaryContainer,
                      fontSize: 17.fSize,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Container(

              height: 56.v,
              decoration: ShapeDecoration(
                color: Color(0xFFF8F8F8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child:  Row(
                mainAxisAlignment:  MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.facebook,
                    height: 24.adaptSize,
                    width: 24.adaptSize,

                  ),
                  SizedBox(width: 8.h),
                  Text(
                    'Facebook',
                    style: TextStyle(
                      color: theme.colorScheme.onSecondaryContainer,
                      fontSize: 17.fSize,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
          // _buildGoogle(),
          // _buildFacebook()
        ]);
  }

  onTapSignUp() {
    Get.toNamed(
      AppRoutes.homeScreenContainerScreen,
    );
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapGoogle() {
    Get.toNamed(
      AppRoutes.homeScreenContainerScreen,
    );
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapFacebook() {
    Get.toNamed(
      AppRoutes.homeScreenContainerScreen,
    );
  }

  /// Navigates to the logInWithActiveScreen when the action is triggered.
  onTapTxtAlreadyhavean() {
    Get.toNamed(
      AppRoutes.logInWithActiveScreen,
    );
  }
}
