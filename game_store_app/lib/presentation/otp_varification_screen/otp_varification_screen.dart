import 'controller/otp_varification_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVarificationScreen extends GetWidget<OtpVarificationController> {
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
                    onTapArrowleft1();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "msg_otp_varification".tr),
              styleType: Style.bgFillWhiteA700),
          body: SafeArea(
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 25, right: 20, bottom: 25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(347),
                          margin: getMargin(left: 21, right: 19),
                          child: Text("msg_please_enter_the2".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtBodyGray600)),
                      Padding(
                          padding: getPadding(top: 55),
                          child: Obx(() => PinCodeTextField(
                              appContext: context,
                              controller: controller.otpController.value,
                              length: 6,
                              obscureText: false,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.number,
                              autoDismissKeyboard: true,
                              enableActiveFill: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              cursorColor: ColorConstant.lightBlueA700,
                              onChanged: (value) {},
                              pinTheme: PinTheme(
                                  fieldHeight: getHorizontalSize(51),
                                  fieldWidth: getHorizontalSize(51),
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(20)),
                                  selectedFillColor: ColorConstant.gray50,
                                  activeFillColor: ColorConstant.gray50,
                                  inactiveFillColor: ColorConstant.gray50,
                                  inactiveColor:
                                  ColorConstant.gray50,
                                  selectedColor:
                                  ColorConstant.lightBlueA700,
                                  activeColor:
                                      ColorConstant.fromHex("#1212121D"))))),
                      Padding(
                          padding: getPadding(top: 62),
                          child: Text("lbl_00_59".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtHeadline)),
                      Padding(
                          padding: getPadding(top: 9),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_didn_t_receive_the2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.gray600,
                                        fontSize: getFontSize(17),
                                        fontFamily: 'Aeonik',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                        color: ColorConstant.lightBlueA700,
                                        fontSize: getFontSize(18),
                                        fontFamily: 'Aeonik',
                                        fontWeight: FontWeight.w700)),
                                TextSpan(
                                    text: "lbl_resend_now".tr,
                                    style: TextStyle(
                                        color: ColorConstant.lightBlueA700,
                                        fontSize: getFontSize(18),
                                        fontFamily: 'Aeonik',
                                        fontWeight: FontWeight.w700))
                              ]),
                              textAlign: TextAlign.left)),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_next".tr,
                          margin: getMargin(bottom: 289),
                          onTap: () {
                            onTapNext();
                          })
                    ])),
          )),
    );
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.resetPasswordScreen,
    );
  }

  onTapArrowleft1() {
    Get.back();
  }
}
