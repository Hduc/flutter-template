import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:hair_salon_app/presentation/verification_one_screen/shake_widget.dart';
import 'package:hair_salon_app/presentation/verification_one_screen/shake_widget_state.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pinput/pinput.dart';

import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import 'controller/verification_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

class VerificationOneScreen extends StatefulWidget {
  const VerificationOneScreen({Key? key}) : super(key: key);

  @override
  State<VerificationOneScreen> createState() => _VerificationOneScreenState();
}

class _VerificationOneScreenState extends State<VerificationOneScreen> {
  final VerificationOneController controller =
      Get.put(VerificationOneController());
  final VerificationOneController controllerFind =
      Get.find<VerificationOneController>();
  final _shakeKey = GlobalKey<ShakeWidgetState>();

  final GlobalKey<FormState> _otpformKey = GlobalKey<FormState>();

  Timer? timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (controllerFind.secondsRemaining != 0) {
        controller.change();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        timer!.cancel();
        controllerFind.setTiming(60);
        Get.back();
        return false;
      },
      child: Scaffold(
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
              title: AppbarTitle(text: "Verification"),
              styleType: Style.bgFillWhiteA700),
          body: Form(
            key: _otpformKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: getMargin(left: 16, top: 6, right: 16),
                          child: Text(
                              "Please enter the email address you used to create your account, and we'll send you a code to resetb your password.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtBody))),
                  // Padding(
                  //     padding: getPadding(top: 46),
                  //     child: Text("msg_code_sent_to_ro".tr,
                  //         overflow: TextOverflow.ellipsis,
                  //         textAlign: TextAlign.left,
                  //         style: AppStyle.txtSFProTextRegular17)),
                  Padding(
                      padding: getPadding(top: 27, left: 23, right: 23),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Code Sent to ",
                                style: TextStyle(
                                    color: ColorConstant.fromHex("#000000"),
                                    fontSize: getFontSize(17),
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400)),
                            TextSpan(
                              text: "ronaldrich@gmail.com",
                              style: TextStyle(
                                  color: ColorConstant.fromHex("#000000"),
                                  fontSize: getFontSize(17),
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w700),
                            )
                          ]),
                          textAlign: TextAlign.left)),
                  Padding(
                      padding: getPadding(left: 25, top: 24, right: 25),
                      child: ShakeWidget(
                        key: _shakeKey,
                        shakeCount: 5,
                        shakeOffset: 20,
                        shakeDuration: const Duration(milliseconds: 400),
                        child: Pinput(
                          controller: controller.otpController.value,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.number,
                          errorTextStyle: TextStyle(
                              fontSize: getFontSize(17),
                              color: ColorConstant.red700,
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF Pro Text"),
                          length: 6,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          errorPinTheme: PinTheme(
                            width: getVerticalSize(48),
                            height: getVerticalSize(48),
                            textStyle: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(16),
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray100,
                              border: Border.all(
                                  color: ColorConstant.red700, width: 1),
                              borderRadius:
                                  BorderRadius.circular(getVerticalSize(8)),
                            ),
                          ),
                          defaultPinTheme: PinTheme(
                              width: getVerticalSize(48),
                              height: getVerticalSize(48),
                              textStyle: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(16),
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    getVerticalSize(8)),
                                color: ColorConstant.gray100,
                              )),
                          validator: (s) {
                            if (s == '111111') {
                              return null;
                            } else {
                              _shakeKey.currentState?.shake();
                              return 'Please enter valid verification code';
                            }
                          },
                          showCursor: true,
                        ),
                      )),
                  CustomButton(
                      height: getVerticalSize(53),
                      text: "lbl_verify".tr,
                      margin: getMargin(left: 16, top: 30, right: 16),
                      onTap: () {
                        if (_otpformKey.currentState!.validate()) {
                          onTapVerify();
                        }
                      }),
                  GetBuilder<VerificationOneController>(
                    init: VerificationOneController(),
                    builder: (controller) => Padding(
                        padding: getPadding(top: 29),
                        child: Text(
                            "00:${controller.secondsRemaining.toString()}",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtHeadline)),
                  ),
                  Padding(
                      padding: getPadding(top: 12, left: 81, right: 81),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_didn_t_receive_code2".tr,
                                style: TextStyle(
                                    color: ColorConstant.fromHex("#808080"),
                                    fontSize: getFontSize(16),
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400)),
                            TextSpan(
                                text: " ",
                                style: TextStyle(
                                    color: ColorConstant.fromHex("#000000"),
                                    fontSize: getFontSize(18),
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w600)),
                            TextSpan(
                                text: "lbl_resend_now".tr,
                                style: TextStyle(
                                    color: ColorConstant.fromHex("#000000"),
                                    fontSize: getFontSize(18),
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w600),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    timer!.cancel();

                                    timer = Timer.periodic(
                                        const Duration(seconds: 1), (_) {
                                      if (controller.secondsRemaining !=
                                          0) {
                                        controller.change();
                                      }
                                    });
                                    controller.setTiming(60);
                                  })
                          ]),
                          textAlign: TextAlign.left))
                ]),
          )),
    );
  }

  onTapVerification() {
    Get.toNamed(
      AppRoutes.forgetPassword1Screen,
    );
  }

  onTapVerify() {
    Get.toNamed(
      AppRoutes.resetPasswordScreen,
    );
  }
}
