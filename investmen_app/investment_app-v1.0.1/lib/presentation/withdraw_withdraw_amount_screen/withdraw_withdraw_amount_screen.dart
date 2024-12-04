import 'package:slider_button/slider_button.dart';

import '../../core/utils/key_pad_widget.dart';
import '../../widgets/app_bar/appbar_iconbutton.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../withdraw_withdraw_amount_screen/widgets/listone1_item_widget.dart';
import 'controller/withdraw_withdraw_amount_controller.dart';
import 'models/listone1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_drop_down.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

class WithdrawWithdrawAmountScreen
    extends GetWidget<WithdrawWithdrawAmountController> {
  TextEditingController pinController = TextEditingController();
  WithdrawWithdrawAmountController withdrawAmountController = WithdrawWithdrawAmountController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        Get.back();
        return false;
      },
      child: Scaffold(
          backgroundColor: ColorConstant.lightBlue900,

          body: SafeArea(
            child: Container(
              width: size.width,
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup14,
                    height: getVerticalSize(
                      251.00,
                    ),
                    width: getHorizontalSize(
                        width
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topLeft,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [
                            CustomIconButton(
                                height: 50,
                                width: 50,
                                variant: IconButtonVariant
                                    .FillWhiteA70014,

                                onTap: () {
                                  onTapBtnArrowleft();
                                },
                                child: CustomImageView(
                                    svgPath: ImageConstant
                                        .imgArrowleftWhiteA70050x50)),
                            SizedBox(width: getHorizontalSize(68),),
                            Text("lbl_withdraw".tr,
                                overflow: TextOverflow.ellipsis,
                                style: AppStyle.txtInterSemiBold20
                                    .copyWith(
                                    height: getVerticalSize(1.12))),
                          ],
                        ),






                      ],
                    ).paddingSymmetric(horizontal: 24),
                  ),
                  Container(
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL32,
                    ),
                    child: Padding(
                      padding: getPadding(top: 24),
                      child: ListView(
                          padding: getPadding(top: 24,left: 24,right: 24),
                          children: [
                            Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      padding: getPadding(all: 16),
                                      decoration: AppDecoration.outlineGray2001
                                          .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder24),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: getVerticalSize(40),
                                              width: getHorizontalSize(40),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                                color: ColorConstant.iconButtonBgColor
                                              ),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgAirplane2),
                                            ),
                                            Padding(
                                                padding: getPadding(
                                                    left: 16, top: 10, bottom: 9),
                                                child: Text("lbl_bank_bca".tr,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtInterBold16
                                                        .copyWith(
                                                        height:
                                                        getVerticalSize(
                                                            1.24)))),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgEdit,
                                                height: getSize(24.00),
                                                width: getSize(24.00),
                                                margin: getMargin(
                                                    top: 8, right: 4, bottom: 8))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 27),
                                      child: Text("lbl_20_423".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterBold44.copyWith(
                                              height: getVerticalSize(1.05)))),
                                  CustomDropDown(
                                      width: 141,
                                      focusNode: FocusNode(),
                                      icon: Container(
                                          margin: getMargin(left: 7, right: 12),
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowdownGray800)),
                                      hintText: "msg_buy_in_dollars".tr,
                                      margin: getMargin(top: 17),
                                      items: controller
                                          .withdrawWithdrawAmountModelObj
                                          .value
                                          .dropdownItemList,
                                      onChanged: (value) {
                                        controller.onSelected(value);
                                      }),
                                  KeyPad(

                                    pinController: pinController,
                                    isPinLogin: false,
                                    onChange: (String pin) {   withdrawAmountController.setAmount(pin);print("pin is ${pin}"); },
                                    onSubmit: (String pin) {
                                      withdrawAmountController.setAmount(pin);
                                      print("pin is ${pin}"); },
                                  ),
                                  SizedBox(height: getVerticalSize(24),),
                              
                                  SliderButton(
                                    child: Container(
                                      height: getVerticalSize(56),
                                      width: getHorizontalSize(56),

                                      child: Center(
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightWhiteA700,
                                            height: getSize(24.00),
                                            width: getSize(24.00),
                                            alignment: Alignment.center),),
                                    ).paddingAll(8),
                                    vibrationFlag: true,
                                    shimmer: true,

                                    height: 72,
                                    width: double.infinity,
                                    action: () {
                                      Get.toNamed(AppRoutes.withdrawSummaryScreen);
                                    },
                                    ///Put label over here
                                    label: Text("msg_swipe_to_make_a".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .txtInterBold16WhiteA700
                                            .copyWith(
                                            height: getVerticalSize(
                                                1.24))),
                                    icon: Center(
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowrightWhiteA700,
                                          height: getSize(24.00),
                                          width: getSize(24.00),
                                          alignment: Alignment.center),),

                                    ///Change All the color and size from here.
                                    radius: 8,
                                    buttonColor: ColorConstant.blue700,
                                    backgroundColor: ColorConstant.lightBlue900,
                                    highlightedColor: Colors.white,
                                    baseColor: Colors.white,
                                  ),

                                ])
                          ]),
                    ),


                  ).paddingOnly(top: 118)],
              ),
            ),





          )),
    );
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
