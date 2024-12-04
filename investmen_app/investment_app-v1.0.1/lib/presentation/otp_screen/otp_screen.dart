import '../../widgets/custom_button.dart';
import 'controller/otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends GetWidget<OtpController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.lightBlue900,
        body: SafeArea(
          child: Container(
              height: size.height,
              width: size.width,
              child: Stack(alignment: Alignment.topRight, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        height: getVerticalSize(251.00),
                        width: getHorizontalSize(width),
                        padding: getPadding(
                            left: 14, top: 16, right: 24, bottom: 16),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(ImageConstant.imgGroup14),
                                fit: BoxFit.fill)),
                        child: Stack(children: [
                          CustomIconButton(
                              height: 50,
                              width: 50,
                              variant: IconButtonVariant.FillWhiteA70014,
                              alignment: Alignment.topLeft,
                              onTap: () {
                                onTapBtnArrowleft();
                              },
                              child: CustomImageView(
                                  svgPath: ImageConstant
                                      .imgArrowleftWhiteA70050x50))
                        ]))),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle1933,
                    height: getVerticalSize(175.00),
                    width: getHorizontalSize(253.00),
                    alignment: Alignment.topRight),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 90),
                      child: Container(
                          width: size.width,
                          padding: getPadding(top: 34, bottom: 24),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL32),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 24),
                                    child: Text("msg_you_ve_got_mail".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold32.copyWith(
                                            height: getVerticalSize(1.01)))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        width: getHorizontalSize(317.00),
                                        margin: getMargin(top: 17),
                                        child: Text("msg_we_have_sent_the".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular16Gray800
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.24))))),
                                Padding(
                                    padding: getPadding(left: 24, top: 25,right: 24),
                                    child: Obx(() => PinCodeTextField(
                                        appContext: context,
                                        controller:
                                            controller.otpController.value,
                                        length: 4,
                                        obscureText: false,
                                        obscuringCharacter: '*',
                                        keyboardType: TextInputType.number,
                                        autoDismissKeyboard: true,
                                        enableActiveFill: true,
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        onChanged: (value) {},
                                        pinTheme: PinTheme(
                                            fieldHeight:
                                                getHorizontalSize(56.00),
                                            fieldWidth:
                                                getHorizontalSize(56.00),
                                            shape: PinCodeFieldShape.circle,
                                            selectedFillColor:
                                                ColorConstant.whiteA700,
                                            activeFillColor:
                                                ColorConstant.whiteA700,
                                            inactiveFillColor:
                                                ColorConstant.whiteA700,
                                            inactiveColor:
                                                ColorConstant.gray200,
                                            selectedColor:
                                                ColorConstant.lightBlack,
                                            activeColor:
                                                ColorConstant.gray200)))),
                                Padding(
                                    padding: getPadding(left: 0, top: 26),
                                    child: Center(
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "msg_didn_t_receive_code2".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontSize: getFontSize(16),
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    height:
                                                        getVerticalSize(1.24))),
                                            TextSpan(
                                                text: "lbl_resend".tr,
                                                style: TextStyle(
                                                    color: ColorConstant.blue700,
                                                    fontSize: getFontSize(16),
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w700,
                                                    height:
                                                        getVerticalSize(1.24)))
                                          ]),),
                                    )),
                              ])),
                    )),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomButton(
                      onTap: () {
                        PrefUtils.setIsLogin(false);
                        Get.toNamed(AppRoutes.homepageVthreeContainerScreen);
                      },
                      height: 56,
                      width: 327,
                      text: "lbl_continue".tr,
                      margin: getMargin(bottom: 18)),
                )
              ])),
        ));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
