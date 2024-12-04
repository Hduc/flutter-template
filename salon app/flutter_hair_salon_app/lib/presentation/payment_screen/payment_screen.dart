import 'package:flutter/services.dart';

import 'controller/payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';
import 'package:hair_salon_app/widgets/custom_text_form_field.dart';

class PaymentScreen extends GetWidget<PaymentController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(81),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getVerticalSize(24),
                    width: getHorizontalSize(26),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 28, bottom: 28),
                    onTap: () {
                      onTapArrowleft36();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_payment_method".tr),
                styleType: Style.bgFillWhiteA700),
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  margin: getMargin(left: 54, right: 54, top: 12),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_enter_your_card2".tr,
                            style: TextStyle(
                                color: ColorConstant.fromHex("#000000"),
                                fontSize: getFontSize(16),
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400)),
                        TextSpan(
                            text: "lbl_learn_more".tr,
                            style: TextStyle(
                                color: ColorConstant.fromHex("#a81650"),
                                fontSize: getFontSize(16),
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400))
                      ]),
                      textAlign: TextAlign.center)),
              Padding(
                  padding: getPadding(left: 16, top: 30, right: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("lbl_card_number".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtBody),
                        CustomTextFormField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            textInputType: TextInputType.number,
                            prefixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(60)),
                            prefix: SizedBox(
                                height: getVerticalSize(60),
                                width: getVerticalSize(8)),
                            controller: controller.cardnumbervalueController,
                            hintText: "lbl_1234_5678_9124".tr,
                            margin: getMargin(top: 10))
                      ])),
              Padding(
                  padding: getPadding(left: 16, top: 25, right: 16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Padding(
                                padding: getPadding(right: 20),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_exp_date".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtBody),
                                      CustomTextFormField(
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                          textInputType: TextInputType.number,
                                          variant:
                                              TextFormFieldVariant.NoneRadius,
                                          controller: controller
                                              .expdateformatController,
                                          hintText: "lbl_mm_yy".tr,
                                          margin: getMargin(top: 15),
                                          prefixConstraints: BoxConstraints(
                                              maxHeight: getVerticalSize(50)),
                                          prefix: SizedBox(
                                              height: getVerticalSize(50),
                                              width: getVerticalSize(8)),
                                          padding:
                                              TextFormFieldPadding.PaddingT15),
                                    ]))),
                        Expanded(
                            child: Padding(
                                padding: getPadding(left: 20),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_cvv".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtBody),
                                      CustomTextFormField(
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                          textInputType: TextInputType.number,
                                          isObscureText: true,
                                          variant:
                                              TextFormFieldVariant.NoneRadius,
                                          controller:
                                              controller.cvvvalueController,
                                          hintText: "lbl_123".tr,
                                          margin: getMargin(top: 15),
                                          prefix: SizedBox(
                                              height: getVerticalSize(50),
                                              width: getVerticalSize(8)),
                                          prefixConstraints: BoxConstraints(
                                              maxHeight: getVerticalSize(50)),
                                          padding:
                                              TextFormFieldPadding.PaddingT15,
                                          textInputAction: TextInputAction.done)
                                    ])))
                      ])),
              CustomButton(
                  height: getVerticalSize(53),
                  text: "lbl_add_card".tr,
                  margin: getMargin(top: 30, right: 16, left: 16),
                  onTap: () {
                    onTapAddcard();
                  })
            ])));
  }

  onTapAddcard() {
    Get.back();
  }

  onTapArrowleft36() {
    Get.back();
  }
}
