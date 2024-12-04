import 'package:investment_app/presentation/withdraw_success_bottomsheet/withdraw_success_bottomsheet.dart';

import '../../widgets/custom_icon_button.dart';
import '../withdraw_success_bottomsheet/controller/withdraw_success_controller.dart';
import 'controller/withdraw_summary_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:investment_app/widgets/app_bar/appbar_title.dart';
import 'package:investment_app/widgets/app_bar/custom_app_bar.dart';
import 'package:investment_app/widgets/custom_button.dart';

class WithdrawSummaryScreen extends GetWidget<WithdrawSummaryController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Get.back();
          Get.back();
          return false;
        },
        child: Scaffold(
          backgroundColor: ColorConstant.lightBlue900,
          body: Container(
            width: size.width,
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup14,
                  height: getVerticalSize(
                    251.00,
                  ),
                  width: getHorizontalSize(width),
                  alignment: Alignment.topLeft,
                ),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Row(
                      children: [
                        CustomIconButton(
                            height: 50,
                            width: 50,
                            variant: IconButtonVariant.FillWhiteA70014,
                            onTap: () {
                              Get.back();
                            },
                            child: CustomImageView(
                                svgPath:
                                    ImageConstant.imgArrowleftWhiteA70050x50)),
                        SizedBox(
                          width: getHorizontalSize(77),
                        ),
                        Text(
                          "msg_preview_withdraw".tr,
                          style: AppStyle.txtWhite20Width600.copyWith(
                            height: getVerticalSize(
                              1.01,
                            ),
                          ),
                        ),
                        SizedBox()
                      ],
                    ).paddingSymmetric(horizontal: 24),
                  ),
                ),
                Padding(
                  padding: getPadding(top: 118),
                  child: Container(
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL32,
                      ),
                      child: Padding(
                        padding: getPadding(left: 24, right: 24, top: 24),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: getSize(
                                        77.00,
                                      ),
                                      width: getSize(
                                        77.00,
                                      ),
                                      padding: getPadding(
                                        left: 13,
                                        top: 30,
                                        right: 13,
                                        bottom: 30,
                                      ),
                                      decoration: AppDecoration.fillGray100
                                          .copyWith(shape: BoxShape.circle),
                                      child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgLocationLightBlue90015x49,
                                        height: getVerticalSize(
                                          15.00,
                                        ),
                                        width: getHorizontalSize(
                                          49.00,
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                    Padding(
                                        padding: getPadding(top: 17),
                                        child: Text("msg_bank_central_asia".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterBold16
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.24)))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: double.infinity,
                                        margin: getMargin(top: 27),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray200)),
                                    Padding(
                                        padding: getPadding(top: 24),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("lbl_withdraw_in".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular14WhiteA700
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.19))),
                                              Text("lbl_dollars_usd".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.19)))
                                            ])),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: double.infinity,
                                        margin: getMargin(top: 25),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray200)),
                                    Padding(
                                        padding: getPadding(top: 24),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Text(
                                                      "msg_account_holder_name"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular14WhiteA700
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.19)))),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text(
                                                      "lbl_jack_sparrow".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium14
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.19))))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 25),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("lbl_account_number".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular14WhiteA700
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.19))),
                                              Text("lbl_1143672638".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.19)))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 26),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("lbl_bank_name".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular14WhiteA700
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.19))),
                                              Text("lbl_bank_bca".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.19)))
                                            ])),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: double.infinity,
                                        margin: getMargin(top: 25),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray200)),
                                    Padding(
                                        padding: getPadding(top: 24),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Text("lbl_amount".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular14WhiteA700
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.19)))),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text(
                                                      "lbl_yogyakarta".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium14
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.19))))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 25),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("lbl_withdrawal_fee".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular14WhiteA700
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.19))),
                                              Text("lbl_usd".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.19)))
                                            ])),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: double.infinity,
                                        margin: getMargin(top: 25),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray200)),
                                    Padding(
                                        padding: getPadding(top: 24, bottom: 1),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("lbl_total_proceeds".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular14WhiteA700
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.19))),
                                              Text("lbl_20_423".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium14
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.19)))
                                            ]))
                                  ]),
                              Padding(
                                  padding: getPadding(bottom: 16),
                                  child: CustomButton(
                                      onTap: () {
                                        showModalBottomSheet(
                                          isDismissible: false,
                                          isScrollControlled: true,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(32),
                                                  topRight:
                                                      Radius.circular(32))),
                                          context: context,
                                          builder: (context) =>
                                              WithdrawSuccessBottomsheet(Get.put(
                                                  WithdrawSuccessController())),
                                        );
                                      },
                                      height: 56,
                                      width: 327,
                                      text: "lbl_withdraw_now".tr))
                            ]).paddingOnly(top: 0),
                      )),
                )
              ],
            ),
          ),
        ));
  }

  onTapArrowleft18() {
    Get.back();
    Get.back();
  }
}
