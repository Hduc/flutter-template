import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../core/utils/appbar.dart';
import 'controller/verification_controller.dart';

class VerificationScreen extends GetWidget<VerificationController> {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor:Colors.white,

        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomAppBarText(
                title: 'Verification',
              ),
              Divider(
                color: Color(0xFFE7E7E7),
                thickness: getSize(1.5),
              ),
              Text("msg_please_provide_the".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge),
              Padding(
                  padding: getPadding(top: 24.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_code_sent_to".tr,
                            style: theme.textTheme.bodyLarge),
                        TextSpan(
                            text: "msg_ronaldrichards_gmail_com".tr,
                            style: CustomTextStyles
                                .titleMediumBlack900SemiBold)
                      ]),
                      textAlign: TextAlign.left)),
              Padding(
                  padding: getPadding(top: 24.h),
                  child: Obx(() => Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 16.h),
                    child: PinCodeTextField(
                        appContext: context,
                        controller: controller.otpController.value,
                        length: 6,
                        obscureText: false,
                        obscuringCharacter: '*',
                        keyboardType: TextInputType.number,
                        autoDismissKeyboard: true,
                        enableActiveFill: true,

                        textInputAction: TextInputAction.next,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        onChanged: (value) {},
                        pinTheme: PinTheme(
                            fieldHeight: getSize(50),
                            fieldWidth: getSize(50),
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(12),
                            selectedFillColor: Colors.transparent,
                            activeFillColor: Colors.transparent,
                            inactiveFillColor: Colors.transparent,
                            inactiveColor:
                                theme.colorScheme.onPrimaryContainer,
                            selectedColor:
                                theme.colorScheme.onPrimaryContainer,
                            activeColor:
                                theme.colorScheme.onPrimaryContainer)),
                  ))),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.h),
                child: CustomElevatedButton(
                    text: "lbl_verify".tr,
                    margin: getMargin(top: 40.h),
                    buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(54)))),
                    buttonTextStyle: theme.textTheme.titleMedium!,
                    onTap: () {
                      onTapVerify();
                    }),
              ),
              Padding(
                  padding: getPadding(top: 24.h,),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_don_t_receive_a2".tr,
                            style: theme.textTheme.bodyLarge),
                        TextSpan(
                            text: "lbl_resend_now".tr,
                            style: CustomTextStyles
                                .titleMediumBlack900SemiBold)
                      ]),
                      textAlign: TextAlign.left))
            ]
        )
    );
  }


  onTapArrowleft1() {
    Get.back();
  }

  onTapVerify() {
    Get.toNamed(
      AppRoutes.resetPasswordScreen,
    );
  }
}
