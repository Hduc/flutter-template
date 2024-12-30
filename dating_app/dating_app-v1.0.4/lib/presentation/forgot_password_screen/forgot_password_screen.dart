import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/core/utils/validation_functions.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:dating_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/appbar.dart';
import 'controller/forgot_password_controller.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
        body: Form(
            key: _formKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomAppBarText(
                    title: 'Forget password',
                  ),
                  Divider(
                    color: Color(0xFFE7E7E7),
                    thickness: getSize(1.5),
                  ),

                  Text
                    ("msg_please_provide_the".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyLarge),
                  Padding(
                      padding: getPadding(top: 24.h),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 16.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_email_address".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodyLargeGray600),
                              CustomTextFormField(
                                autofocus: false,
                                  controller: controller.emailController,
                                  margin: getMargin(top: 6),

                                  hintText: "Enter Email address".tr,

                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  },
                                  filled: true,
)
                            ]),
                      )),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomElevatedButton(
                        text: "lbl_send".tr,
                        margin: getMargin(top: 40.h,),
                        buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(
                                Size(double.maxFinite, getVerticalSize(54)))),
                        buttonTextStyle: theme.textTheme.titleMedium!,
                        onTap: () {
                          onTapSend();
                        }),
                  )
                ])));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft() {
    Get.back();
  }

  /// Navigates to the verificationScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the verificationScreen.
  onTapSend() {
    Get.toNamed(
      AppRoutes.verificationScreen,
    );
  }
}
