import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/app_bar/appbar_title.dart';
import 'package:musicapp/widgets/app_bar/custom_app_bar.dart';
import 'package:musicapp/widgets/custom_elevated_button.dart';
import 'package:pinput/pinput.dart';

import 'controller/otp_verification_controller.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  OtpVerificationController controller = Get.put(OtpVerificationController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
   setSafeAreaColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          closeApp();
          return true;
        },
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.bgColor,
            appBar: CustomAppBar(
                height: getVerticalSize(81),
                leadingWidth: 44,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: PrefUtils().getThemeData() == "primary"?ImageConstant.imgArrowleft:
                    ImageConstant.imgArrowleftWhite,
                    margin: getMargin(left: 20, top: 29, bottom: 28),
                    onTap: () {
                      onTapArrowleft1();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "msg_otp_verification".tr),
                styleType: Style.bgFill),
            body: Container(
                width: double.maxFinite,
                padding:
                    getPadding(left: 20, top: 15, right: 20, bottom: 15),
                child: Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: getHorizontalSize(343),
                            margin: getMargin(left: 22, right: 21),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "lbl_p".tr,
                                      style: TextStyle(
                                          color: appTheme.black900,
                                          fontSize: getFontSize(17),
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: "msg_lease_enter_your2".tr,
                                      style: TextStyle(
                                          color: appTheme.black900,
                                          fontSize: getFontSize(17),
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w400))
                                ]),
                                textAlign: TextAlign.center)),

                        Padding(
                            padding: getPadding(top: 43),
                            child: Obx(() =>
                                Pinput(

                                  errorTextStyle:  TextStyle(
                                    color:appTheme.errorColor,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  disabledPinTheme: PinTheme(
                                      padding: getPadding(left: 8.5,right: 8.5),
                                      decoration: BoxDecoration(color: Colors.red)
                                  ),
                                  controller: controller.otpController.value,
                                  length: 6,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please enter valid OTP";
                                    }
                                    return null;
                                  },
                                  errorPinTheme: PinTheme(
                                    padding: getPadding(left: 9,right: 9),
                                    decoration: BoxDecoration(
                                      color:appTheme.white700,
                                      border: Border.all(color:appTheme.errorColor, ),
                                      borderRadius:  BorderRadius.circular(
                                        getHorizontalSize(16),),
                                    ),
                                    textStyle: TextStyle(
                                      color:appTheme.errorColor,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    width: getHorizontalSize(50),
                                    height: getVerticalSize(50),
                                  ),
                                  defaultPinTheme: PinTheme(
                                    padding: getPadding(left: 8.5,right: 8.5),
                                    width: getHorizontalSize(50),
                                    height: getVerticalSize(50),
                                    textStyle:TextStyle(
                                      color: appTheme.black900,
                                      fontSize: getFontSize(
                                        24,
                                      ),
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    decoration: BoxDecoration(
                                      color:appTheme.bgColor,
                                      border: Border.all(color:appTheme.blueGray100 ),
                                      borderRadius:  BorderRadius.circular(
                                        getHorizontalSize(16),),

                                    ),
                                  ),
                                )
                            )
                        ),







                        // Padding(
                        //     padding: getPadding(top: 43),
                        //     child: Obx(() => PinCodeTextField(
                        //         appContext: context,
                        //         controller: controller.otpController.value,
                        //         length: 6,
                        //         obscureText: false,
                        //         obscuringCharacter: '*',
                        //         keyboardType: TextInputType.number,
                        //         autoDismissKeyboard: true,
                        //         enableActiveFill: true,
                        //         inputFormatters: [
                        //           FilteringTextInputFormatter.digitsOnly
                        //         ],
                        //         onChanged: (value) {},
                        //         pinTheme: PinTheme(
                        //             fieldHeight: getHorizontalSize(48),
                        //             fieldWidth: getHorizontalSize(48),
                        //             shape: PinCodeFieldShape.box,
                        //             borderRadius: BorderRadius.circular(
                        //                 getHorizontalSize(16)),
                        //             selectedFillColor: Color(0X1212121D),
                        //             activeFillColor: Color(0X1212121D),
                        //             inactiveFillColor: Color(0X1212121D),
                        //             inactiveColor: appTheme.blueGray100,
                        //             selectedColor: appTheme.blueGray100,
                        //             activeColor: appTheme.blueGray100)))),
                        CustomElevatedButton(
                            text: "lbl_next".tr,
                            margin: getMargin(top: 48, bottom: 5),
                            buttonStyle: ButtonThemeHelper.fillDeeppurpleA200
                                .copyWith(
                                    fixedSize:
                                        MaterialStateProperty.all<Size>(Size(
                                            double.maxFinite,
                                            getVerticalSize(54)))),
                            buttonTextStyle:
                                TextThemeHelper.titleMediumPrimary_1,
                            onTap: () {
                              if(_formKey.currentState!.validate()){
                              onTapNext();}
                            })
                      ]),
                ))));
  }

  onTapArrowleft1() {
    Get.back();
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.resetPasswordOneScreen,
    );
  }
}
