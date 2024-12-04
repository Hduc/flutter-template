import 'package:flutter/services.dart';
import 'package:investment_app/presentation/register_success_bottomsheet/register_success_bottomsheet.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../widgets/custom_button.dart';
import '../register_success_bottomsheet/controller/register_success_controller.dart';
import 'controller/register_set_pin_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

class RegisterSetPinScreen extends GetWidget<RegisterSetPinController> {
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
                padding: getPadding(left: 24, top: 16, right: 24, bottom: 16),
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
                          svgPath: ImageConstant.imgArrowleftWhiteA70050x50))
                ]))),
        CustomImageView(
            imagePath: ImageConstant.imgRectangle1933,
            height: getVerticalSize(175.00),
            width: getHorizontalSize(253.00),
            alignment: Alignment.topRight),
        Padding(
          padding: getPadding(top: 90),
          child: Container(
              width: size.width,
              padding: getPadding(left: 24, top: 26, right: 24, bottom: 26),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL32),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("msg_set_your_pin_code".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold32
                            .copyWith(height: getVerticalSize(1.01))),
                    Container(
                        width: getHorizontalSize(292.00),
                        margin: getMargin(top: 15),
                        child: Text("msg_add_a_pin_to_make".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular16
                                .copyWith(height: getVerticalSize(1.24)))),
                    Padding(
                        padding: getPadding(left: 0, top: 25,right: 0),
                        child:  PinCodeTextField(
                            appContext: context,
                            controller:
                            controller.otpController,
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
                                ColorConstant.gray200))),
                    /*Padding(
                        padding: getPadding(top: 25, bottom: 380),
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
                                ColorConstant.blue700,
                                selectedColor:
                                ColorConstant.blue700,
                                activeColor:
                                ColorConstant.blue700)))),*/
                    // Padding(
                    //     padding: getPadding(top: 25, bottom: 404),
                    //     child: Row(children: [
                    //       Container(
                    //           width: getSize(56.00),
                    //           padding: getPadding(
                    //               left: 23, top: 13, right: 23, bottom: 13),
                    //           decoration: AppDecoration.txtOutlineBlue700
                    //               .copyWith(
                    //                   borderRadius: BorderRadiusStyle
                    //                       .txtCircleBorder28),
                    //           child: Text("lbl".tr,
                    //               overflow: TextOverflow.ellipsis,
                    //               textAlign: TextAlign.left,
                    //               style: AppStyle
                    //                   .txtInterSemiBold20Gray80001
                    //                   .copyWith(
                    //                       height: getVerticalSize(1.12)))),
                    //       Container(
                    //           height: getSize(56.00),
                    //           width: getSize(56.00),
                    //           margin: getMargin(left: 16),
                    //           decoration: BoxDecoration(
                    //               color: ColorConstant.whiteA700,
                    //               borderRadius: BorderRadius.circular(
                    //                   getHorizontalSize(28.00)),
                    //               border: Border.all(
                    //                   color: ColorConstant.gray200,
                    //                   width: getHorizontalSize(1.00)))),
                    //       Container(
                    //           height: getSize(56.00),
                    //           width: getSize(56.00),
                    //           margin: getMargin(left: 16),
                    //           decoration: BoxDecoration(
                    //               color: ColorConstant.whiteA700,
                    //               borderRadius: BorderRadius.circular(
                    //                   getHorizontalSize(28.00)),
                    //               border: Border.all(
                    //                   color: ColorConstant.gray200,
                    //                   width: getHorizontalSize(1.00)))),
                    //       Container(
                    //           height: getSize(56.00),
                    //           width: getSize(56.00),
                    //           margin: getMargin(left: 16),
                    //           decoration: BoxDecoration(
                    //               color: ColorConstant.whiteA700,
                    //               borderRadius: BorderRadius.circular(
                    //                   getHorizontalSize(28.00)),
                    //               border: Border.all(
                    //                   color: ColorConstant.gray200,
                    //                   width: getHorizontalSize(1.00)))),
                    //     ])),
                    CustomButton(
                        onTap: () {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(32),
                                    topLeft: Radius.circular(32))),
                            isScrollControlled: true,
                            context: context,
                            builder: (context) =>
                                RegisterSuccessBottomsheet(
                                    Get.put(RegisterSuccessController())),
                          );
                        },
                        height: 57,
                        width: 327,
                        text: "lbl_continue".tr,
                        margin: getMargin(left: 0))
                  ])),
        ),
    ]),
        ),
      ),
    );
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
