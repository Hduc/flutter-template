import 'controller/withdraw_add_bank_account_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';
import 'package:investment_app/widgets/custom_search_view.dart';

class WithdrawAddBankAccountScreen
    extends GetWidget<WithdrawAddBankAccountController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        Get.back();
        return false;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.lightBlue900,
          body: SafeArea(
            child: Container(
                height: size.height,
                width: size.width,
                child: Stack(children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(

                          height: size.height,
                          width: size.width,
                          child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                        height: getVerticalSize(251.00),
                                        width: getHorizontalSize(width),
                                        padding: getPadding(
                                            left: 24,
                                            top: 16,
                                            right: 24,
                                            bottom: 16),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    ImageConstant
                                                        .imgGroup14),
                                                fit: BoxFit.fill)),
                                        child: Stack(children: [
                                          CustomIconButton(
                                              height: 50,
                                              width: 50,
                                              variant: IconButtonVariant
                                                  .FillWhiteA70014,
                                              alignment: Alignment.topLeft,
                                              onTap: () {
                                                onTapBtnArrowleft();
                                              },
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleftWhiteA70050x50))
                                        ]))),
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                        width: getHorizontalSize(253.00),
                                        padding: getPadding(
                                            left: 9,
                                            top: 28,
                                            right: 9,
                                            bottom: 28),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    ImageConstant
                                                        .imgRectangle1933),
                                                fit: BoxFit.cover)),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      bottom: 94),
                                                  child: Text(
                                                      "lbl_select_bank".tr,
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold20
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.12))))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        width: size.width,
                                        padding: getPadding(all: 24),
                                        decoration: AppDecoration
                                            .fillWhiteA700
                                            .copyWith(
                                                borderRadius:
                                                    BorderRadiusStyle
                                                        .customBorderTL32),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomSearchView(
                                                  width: 327,
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .searchboxController,
                                                  hintText:
                                                      "lbl_search_bank".tr,
                                                  margin: getMargin(
                                                      bottom: 582),
                                                  prefix: Container(
                                                      margin: getMargin(
                                                          left: 16,
                                                          top: 14,
                                                          right: 16,
                                                          bottom: 14),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgSearchLightBlue900)),
                                                  prefixConstraints:
                                                      BoxConstraints(
                                                          maxHeight:
                                                              getVerticalSize(
                                                                  52.00)))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 24, right: 24,top: 190),
                                        child: ListView(
                                            // mainAxisSize: MainAxisSize.min,
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.start,
                                            children: [
                                              GestureDetector(
                                               onTap:(){
                                                Get.toNamed(AppRoutes.withdrawBankAccountInfoScreen);
                                               },
                                                child: Container(
                                                    padding:
                                                        getPadding(all: 16),
                                                    decoration: AppDecoration
                                                        .outlineGray2001
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder24),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            height: getVerticalSize(40),
                                                            width: getHorizontalSize(40),
                                                            decoration: BoxDecoration( borderRadius: BorderRadius.circular(8),
                                                            color: ColorConstant.iconButtonBgColor),
                                                            child: Padding(
                                                              padding: getPadding(top: 6.36,bottom: 6.36,left: 1.82,right: 1.82),
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                  ImageConstant
                                                                      .imgIconIndigo900),
                                                            ),
                                                          ),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left:
                                                                          16,
                                                                      top: 9,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "lbl_bank_mandiri"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterBold16
                                                                      .copyWith(
                                                                          height:
                                                                              getVerticalSize(1.24)))),
                                                          Spacer(),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgArrowright,
                                                              height: getSize(
                                                                  20.00),
                                                              width: getSize(
                                                                  20.00),
                                                              margin:
                                                                  getMargin(
                                                                      top: 10,
                                                                      right:
                                                                          4,
                                                                      bottom:
                                                                          10))
                                                        ])),
                                              ),
                                              GestureDetector(
                                                onTap:(){
                                                  Get.toNamed(AppRoutes.withdrawBankAccountInfoScreen);
                                                },
                                                child: Container(
                                                    margin: getMargin(top: 8),
                                                    padding:
                                                        getPadding(all: 16),
                                                    decoration: AppDecoration
                                                        .outlineGray2001
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder24),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            height: getVerticalSize(40),
                                                            width: getHorizontalSize(40),
                                                            decoration: BoxDecoration( borderRadius: BorderRadius.circular(8),
                                                                color: ColorConstant.iconButtonBgColor),
                                                            child: Padding(
                                                              padding: getPadding(top: 6.36,bottom: 6.36,left: 1.82,right: 1.82),
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                  ImageConstant
                                                                      .imgBank),
                                                            ),
                                                          ),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left:
                                                                          16,
                                                                      top: 11,
                                                                      bottom:
                                                                          8),
                                                              child: Text(
                                                                  "lbl_bank_jago"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterBold16
                                                                      .copyWith(
                                                                          height:
                                                                              getVerticalSize(1.24)))),
                                                          Spacer(),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgArrowright,
                                                              height: getSize(
                                                                  20.00),
                                                              width: getSize(
                                                                  20.00),
                                                              margin:
                                                                  getMargin(
                                                                      top: 10,
                                                                      right:
                                                                          4,
                                                                      bottom:
                                                                          10))
                                                        ])),
                                              ),
                                              GestureDetector(
                                                onTap:(){
                                                  Get.toNamed(AppRoutes.withdrawBankAccountInfoScreen);
                                                },
                                                child: Container(
                                                    margin: getMargin(top: 8),
                                                    padding:
                                                        getPadding(all: 16),
                                                    decoration: AppDecoration
                                                        .outlineGray2001
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder24),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            height: getVerticalSize(40),
                                                            width: getHorizontalSize(40),
                                                            decoration: BoxDecoration( borderRadius: BorderRadius.circular(8),
                                                                color: ColorConstant.iconButtonBgColor),
                                                            child: Padding(
                                                              padding: getPadding(top: 6.36,bottom: 6.36,left: 1.82,right: 1.82),
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                  ImageConstant
                                                                      .imgSignalCyan900),
                                                            ),
                                                          ),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left:
                                                                          16,
                                                                      top: 10,
                                                                      bottom:
                                                                          9),
                                                              child: Text(
                                                                  "lbl_bank_bni"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterBold16
                                                                      .copyWith(
                                                                          height:
                                                                              getVerticalSize(1.24)))),
                                                          Spacer(),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgArrowright,
                                                              height: getSize(
                                                                  20.00),
                                                              width: getSize(
                                                                  20.00),
                                                              margin:
                                                                  getMargin(
                                                                      top: 10,
                                                                      right:
                                                                          4,
                                                                      bottom:
                                                                          10))
                                                        ])),
                                              ),
                                              GestureDetector(
                                                onTap:(){
                                                  Get.toNamed(AppRoutes.withdrawBankAccountInfoScreen);
                                                },
                                                child: Container(
                                                    margin: getMargin(top: 8),
                                                    padding:
                                                        getPadding(all: 16),
                                                    decoration: AppDecoration
                                                        .outlineGray2001
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder24),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            height: getVerticalSize(40),
                                                            width: getHorizontalSize(40),
                                                            decoration: BoxDecoration( borderRadius: BorderRadius.circular(8),
                                                                color: ColorConstant.iconButtonBgColor),
                                                            child: Padding(
                                                              padding: getPadding(top: 6.36,bottom: 6.36,left: 1.82,right: 1.82),
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                  ImageConstant
                                                                      .imgSignalAmber400),
                                                            ),
                                                          ),

                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left:
                                                                          16,
                                                                      top: 10,
                                                                      bottom:
                                                                          9),
                                                              child: Text(
                                                                  "lbl_bank_danamon"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterBold16
                                                                      .copyWith(
                                                                          height:
                                                                              getVerticalSize(1.24)))),
                                                          Spacer(),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgArrowright,
                                                              height: getSize(
                                                                  20.00),
                                                              width: getSize(
                                                                  20.00),
                                                              margin:
                                                                  getMargin(
                                                                      top: 10,
                                                                      right:
                                                                          4,
                                                                      bottom:
                                                                          10))
                                                        ])),
                                              ),
                                              GestureDetector(
                                                onTap:(){
                                                  Get.toNamed(AppRoutes.withdrawBankAccountInfoScreen);
                                                },
                                                child: Container(
                                                    margin: getMargin(top: 8),
                                                    padding:
                                                        getPadding(all: 16),
                                                    decoration: AppDecoration
                                                        .outlineGray2001
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder24),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            height: getVerticalSize(40),
                                                            width: getHorizontalSize(40),
                                                            decoration: BoxDecoration( borderRadius: BorderRadius.circular(8),
                                                                color: ColorConstant.iconButtonBgColor),
                                                            child: Padding(
                                                              padding: getPadding(top: 6.36,bottom: 6.36,left: 1.82,right: 1.82),
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                  ImageConstant
                                                                      .imgCutGray900),
                                                            ),
                                                          ),

                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left:
                                                                          16,
                                                                      top: 11,
                                                                      bottom:
                                                                          8),
                                                              child: Text(
                                                                  "lbl_bank_maybank"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterBold16
                                                                      .copyWith(
                                                                          height:
                                                                              getVerticalSize(1.24)))),
                                                          Spacer(),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgArrowright,
                                                              height: getSize(
                                                                  20.00),
                                                              width: getSize(
                                                                  20.00),
                                                              margin:
                                                                  getMargin(
                                                                      top: 10,
                                                                      right:
                                                                          4,
                                                                      bottom:
                                                                          10))
                                                        ])),
                                              ),
                                              GestureDetector(
                                                onTap:(){
                                                  Get.toNamed(AppRoutes.withdrawBankAccountInfoScreen);
                                                },
                                                child: Container(
                                                    margin: getMargin(top: 8),
                                                    padding:
                                                        getPadding(all: 16),
                                                    decoration: AppDecoration
                                                        .outlineGray2001
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder24),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            height: getVerticalSize(40),
                                                            width: getHorizontalSize(40),
                                                            decoration: BoxDecoration( borderRadius: BorderRadius.circular(8),
                                                                color: ColorConstant.iconButtonBgColor),
                                                            child: Padding(
                                                              padding: getPadding(top: 6.36,bottom: 6.36,left: 1.82,right: 1.82),
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                  ImageConstant
                                                                      .imgIconLightGreen600),
                                                            ),
                                                          ),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left:
                                                                          16,
                                                                      top: 10,
                                                                      bottom:
                                                                          9),
                                                              child: Text(
                                                                  "lbl_bank_permata"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterBold16
                                                                      .copyWith(
                                                                          height:
                                                                              getVerticalSize(1.24)))),
                                                          Spacer(),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgArrowright,
                                                              height: getSize(
                                                                  20.00),
                                                              width: getSize(
                                                                  20.00),
                                                              margin:
                                                                  getMargin(
                                                                      top: 10,
                                                                      right:
                                                                          4,
                                                                      bottom:
                                                                          10))
                                                        ])),
                                              ),
                                              GestureDetector(
                                                onTap:(){
                                                  Get.toNamed(AppRoutes.withdrawBankAccountInfoScreen);
                                                },
                                                child: Container(
                                                    margin: getMargin(top: 8),
                                                    padding:
                                                        getPadding(all: 16),
                                                    decoration: AppDecoration
                                                        .outlineGray2001
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder24),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [

                                                          Container(
                                                            height: getVerticalSize(40),
                                                            width: getHorizontalSize(40),
                                                            decoration: BoxDecoration( borderRadius: BorderRadius.circular(8),
                                                                color: ColorConstant.iconButtonBgColor),
                                                            child: Padding(
                                                              padding: getPadding(top: 6.36,bottom: 6.36,left: 1.82,right: 1.82),
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                  ImageConstant
                                                                      .imgAirplane40x40),
                                                            ),
                                                          ),

                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left:
                                                                          16,
                                                                      top: 10,
                                                                      bottom:
                                                                          9),
                                                              child: Text(
                                                                  "lbl_bank_bca"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterBold16
                                                                      .copyWith(
                                                                          height:
                                                                              getVerticalSize(1.24)))),
                                                          Spacer(),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgArrowright,
                                                              height: getSize(
                                                                  20.00),
                                                              width: getSize(
                                                                  20.00),
                                                              margin:
                                                                  getMargin(
                                                                      top: 10,
                                                                      right:
                                                                          4,
                                                                      bottom:
                                                                          10))
                                                        ])),
                                              ),

                                            ])))
                              ])))
                ])),
          )),
    );
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
