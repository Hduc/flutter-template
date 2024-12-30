import 'package:pinput/pinput.dart';

import 'controller/verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_salary_management_app/widgets/custom_elevated_button.dart';

class VerificationScreen extends GetWidget<VerificationController> {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    final defaultPinTheme = PinTheme(
      width: 50.h,
      height: 50.h,
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),

      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(

          color: Color(0xFFE7E7E7),
        ),
        borderRadius: BorderRadius.circular(12.h),
      ),
    );


    final errorPInTheme = PinTheme(
      width: 50.h,
      height: 50.h,
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),

      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(

          color: Color(0xFFD83636),
        ),
        borderRadius: BorderRadius.circular(12.h),
      ),
    );
    return Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: _buildAppBar(),
        body: Form(
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
                centerTitle: true,
                leading: AppbarLeadingImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    // margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
                    onTap: () {
                      onTapArrowLeft();
                    }),
                title: AppbarSubtitle(
                  text: "lbl_verification".tr,
                ),
              ),
            ),
            Expanded(child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
              child: Column(
                children: [
                  SizedBox(
                      width: 396.h,
                      child: Text("msg_enter_your_email2".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge!
                              .copyWith(height: 1.47))),
                  SizedBox(height: 25.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_code_sent_to".tr,
                                    style: theme.textTheme.bodyLarge),
                                TextSpan(
                                    text: "msg_ronaldrichards_gmail_com".tr,
                                    style:
                                    CustomTextStyles.titleMediumSemiBold17)
                              ]),
                              textAlign: TextAlign.left))),
                  SizedBox(height: 15.v),
                  Pinput(
                    length: 6,
                    errorTextStyle: TextStyle(
                      color: Color(0xFFFF3D3D),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    controller: controller.otpController,
                    // senderPhoneNumber: "1262189112",
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    defaultPinTheme:defaultPinTheme,
                    errorPinTheme: errorPInTheme,
                    errorText: "please enter otp".tr,
                    validator: (s) {
                      if(s!.length<6){
                        return 'your otp must be 6 number'.tr;
                      }
                      else{
                        return null;
                      }
                      // return s == '121313' ? null : 'Pin is incorrect';
                    },
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                  ),
                  // Padding(
                  //     padding: EdgeInsets.symmetric(horizontal: 3.h),
                  //     child: Obx(() => CustomPinCodeTextField(
                  //         context: Get.context!,
                  //         controller: controller.otpController.value,
                  //         onChanged: (value) {}))),
                  SizedBox(height: 30.v),
                  CustomElevatedButton(
                      text: "lbl_verify".tr,
                      onPressed: () {
                        if(_formKey.currentState!.validate()){

                          onTapVerify();
                        }
                      }),
                  SizedBox(height: 26.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_don_t_receive_an2".tr,
                            style: theme.textTheme.bodyLarge),
                        TextSpan(
                            text: "lbl_resend_now".tr,
                            style: CustomTextStyles.titleMediumSemiBold17)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 5.v)
                ],
              ),
            ))

          ]),
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
  //       title: AppbarSubtitle(text: "lbl_verification".tr),
  //       styleType: Style.bgOutline);
  // }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.
  onTapVerify() {
    Get.toNamed(
      AppRoutes.resetPasswordScreen,
    );
  }
}
