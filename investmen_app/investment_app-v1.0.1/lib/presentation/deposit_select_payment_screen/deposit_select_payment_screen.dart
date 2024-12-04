import 'controller/deposit_select_payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

class DepositSelectPaymentScreen
    extends GetWidget<DepositSelectPaymentController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.lightBlue900,
        body: WillPopScope(
          onWillPop: () async {
            Get.back();
            return false;
          },
          child: SafeArea(
            child: Container(
                height: size.height,
                width: size.width,
                child: Stack(children: [
                  Align(
                      alignment: Alignment.center,
                      child: SingleChildScrollView(
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
                                            padding: getPadding(all: 29),
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
                                                          bottom: 90),
                                                      child: Text(
                                                          "lbl_deposit".tr,
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
                                          // height: getVerticalSize(682.00),
                                          width: size.width,
                                          decoration: BoxDecoration(
                                              color: ColorConstant.whiteA700,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(
                                                      getHorizontalSize(32.00)),
                                                  topRight: Radius.circular(
                                                      getHorizontalSize(
                                                          32.00)))),
                                          child: Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 24, right: 24),
                                                  child: ListView(children: [
                                                    Text(
                                                        "msg_connected_payment"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold16
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.24))),
                                                    GestureDetector(
                                                      onTap: () {
                                                        Get.toNamed(AppRoutes
                                                            .depositDepositAmountScreen);
                                                      },
                                                      child: Container(
                                                          margin: getMargin(
                                                              top: 16),
                                                          padding: getPadding(
                                                              all: 16),
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
                                                                  height:
                                                                      getVerticalSize(
                                                                          40),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          40),
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      color: ColorConstant
                                                                          .iconButtonBgColor),
                                                                  child:
                                                                      Padding(
                                                                    padding: getPadding(
                                                                        top:
                                                                            6.36,
                                                                        bottom:
                                                                            6.36,
                                                                        left:
                                                                            1.82,
                                                                        right:
                                                                            1.82),
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgLocation),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 11,
                                                                        bottom:
                                                                            8),
                                                                    child: Text(
                                                                        "lbl_paypal"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterBold16
                                                                            .copyWith(height: getVerticalSize(1.24)))),
                                                                Spacer(),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowright,
                                                                    height:
                                                                        getSize(
                                                                            20.00),
                                                                    width: getSize(
                                                                        20.00),
                                                                    margin: getMargin(
                                                                        top: 10,
                                                                        right:
                                                                            4,
                                                                        bottom:
                                                                            10))
                                                              ])),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        Get.toNamed(AppRoutes
                                                            .depositDepositAmountScreen);
                                                      },
                                                      child: Container(
                                                          margin:
                                                              getMargin(top: 8),
                                                          padding: getPadding(
                                                              all: 16),
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
                                                                  height:
                                                                      getVerticalSize(
                                                                          40),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          40),
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      color: ColorConstant
                                                                          .iconButtonBgColor),
                                                                  child:
                                                                      Padding(
                                                                    padding: getPadding(
                                                                        top:
                                                                            6.36,
                                                                        bottom:
                                                                            6.36,
                                                                        left:
                                                                            1.82,
                                                                        right:
                                                                            1.82),
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgSignal),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 11,
                                                                        bottom:
                                                                            8),
                                                                    child: Text(
                                                                        "lbl_google_pay"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterBold16
                                                                            .copyWith(height: getVerticalSize(1.24)))),
                                                                Spacer(),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowright,
                                                                    height:
                                                                        getSize(
                                                                            20.00),
                                                                    width: getSize(
                                                                        20.00),
                                                                    margin: getMargin(
                                                                        top: 10,
                                                                        right:
                                                                            4,
                                                                        bottom:
                                                                            10))
                                                              ])),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        Get.toNamed(AppRoutes
                                                            .depositDepositAmountScreen);
                                                      },
                                                      child: Container(
                                                          margin:
                                                              getMargin(top: 8),
                                                          padding: getPadding(
                                                              all: 16),
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
                                                                  height:
                                                                      getVerticalSize(
                                                                          40),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          40),
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      color: ColorConstant
                                                                          .iconButtonBgColor),
                                                                  child:
                                                                      Padding(
                                                                    padding: getPadding(
                                                                        top:
                                                                            6.36,
                                                                        bottom:
                                                                            6.36,
                                                                        left:
                                                                            1.82,
                                                                        right:
                                                                            1.82),
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgCar),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 11,
                                                                        bottom:
                                                                            8),
                                                                    child: Text(
                                                                        "lbl_gopay"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterBold16
                                                                            .copyWith(height: getVerticalSize(1.24)))),
                                                                Spacer(),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowright,
                                                                    height:
                                                                        getSize(
                                                                            20.00),
                                                                    width: getSize(
                                                                        20.00),
                                                                    margin: getMargin(
                                                                        top: 10,
                                                                        right:
                                                                            4,
                                                                        bottom:
                                                                            10))
                                                              ])),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        Get.toNamed(AppRoutes
                                                            .depositDepositAmountScreen);
                                                      },
                                                      child: Container(
                                                          margin:
                                                              getMargin(top: 8),
                                                          padding: getPadding(
                                                              all: 16),
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
                                                                  height:
                                                                      getVerticalSize(
                                                                          40),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          40),
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      color: ColorConstant
                                                                          .iconButtonBgColor),
                                                                  child:
                                                                      Padding(
                                                                    padding: getPadding(
                                                                        top:
                                                                            6.36,
                                                                        bottom:
                                                                            6.36,
                                                                        left:
                                                                            1.82,
                                                                        right:
                                                                            1.82),
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgApplepay),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 11,
                                                                        bottom:
                                                                            8),
                                                                    child: Text(
                                                                        "lbl_apple_pay"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterBold16
                                                                            .copyWith(height: getVerticalSize(1.24)))),
                                                                Spacer(),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowright,
                                                                    height:
                                                                        getSize(
                                                                            20.00),
                                                                    width: getSize(
                                                                        20.00),
                                                                    margin: getMargin(
                                                                        top: 10,
                                                                        right:
                                                                            4,
                                                                        bottom:
                                                                            10))
                                                              ])),
                                                    ),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 26),
                                                        child: Text(
                                                            "msg_or_use_a_bank_account"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterBold16
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        1.24)))),
                                                    GestureDetector(
                                                      onTap: () {
                                                        Get.toNamed(AppRoutes
                                                            .depositDepositAmountScreen);
                                                      },
                                                      child: Container(
                                                          margin: getMargin(
                                                              top: 17),
                                                          padding: getPadding(
                                                              all: 16),
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
                                                                  height:
                                                                      getVerticalSize(
                                                                          40),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          40),
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      color: ColorConstant
                                                                          .iconButtonBgColor),
                                                                  child:
                                                                      Padding(
                                                                    padding: getPadding(
                                                                        top:
                                                                            6.36,
                                                                        bottom:
                                                                            6.36,
                                                                        left:
                                                                            1.82,
                                                                        right:
                                                                            1.82),
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgIconIndigo900),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                    padding: getPadding(
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
                                                                            .copyWith(height: getVerticalSize(1.24)))),
                                                                Spacer(),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowright,
                                                                    height:
                                                                        getSize(
                                                                            20.00),
                                                                    width: getSize(
                                                                        20.00),
                                                                    margin: getMargin(
                                                                        top: 10,
                                                                        right:
                                                                            4,
                                                                        bottom:
                                                                            10))
                                                              ])),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        Get.toNamed(AppRoutes
                                                            .depositDepositAmountScreen);
                                                      },
                                                      child: Container(
                                                          margin:
                                                              getMargin(top: 8),
                                                          padding: getPadding(
                                                              all: 16),
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
                                                                  height:
                                                                      getVerticalSize(
                                                                          40),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          40),
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      color: ColorConstant
                                                                          .iconButtonBgColor),
                                                                  child:
                                                                      Padding(
                                                                    padding: getPadding(
                                                                        top:
                                                                            6.36,
                                                                        bottom:
                                                                            6.36,
                                                                        left:
                                                                            1.82,
                                                                        right:
                                                                            1.82),
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgAirplane),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                    padding: getPadding(
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
                                                                            .copyWith(height: getVerticalSize(1.24)))),
                                                                Spacer(),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowright,
                                                                    height:
                                                                        getSize(
                                                                            20.00),
                                                                    width: getSize(
                                                                        20.00),
                                                                    margin: getMargin(
                                                                        top: 10,
                                                                        right:
                                                                            4,
                                                                        bottom:
                                                                            10))
                                                              ])),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        Get.toNamed(AppRoutes
                                                            .depositDepositAmountScreen);
                                                      },
                                                      child: Container(
                                                          margin:
                                                              getMargin(top: 8),
                                                          padding: getPadding(
                                                              all: 16),
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
                                                                  height:
                                                                      getVerticalSize(
                                                                          40),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          40),
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      color: ColorConstant
                                                                          .iconButtonBgColor),
                                                                  child:
                                                                      Padding(
                                                                    padding: getPadding(
                                                                        top:
                                                                            6.36,
                                                                        bottom:
                                                                            6.36,
                                                                        left:
                                                                            1.82,
                                                                        right:
                                                                            1.82),
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgSignalCyan900),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                    padding: getPadding(
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
                                                                            .copyWith(height: getVerticalSize(1.24)))),
                                                                Spacer(),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowright,
                                                                    height:
                                                                        getSize(
                                                                            20.00),
                                                                    width: getSize(
                                                                        20.00),
                                                                    margin: getMargin(
                                                                        top: 10,
                                                                        right:
                                                                            4,
                                                                        bottom:
                                                                            10))
                                                              ])),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        Get.toNamed(AppRoutes
                                                            .depositDepositAmountScreen);
                                                      },
                                                      child: Container(
                                                          margin:
                                                              getMargin(top: 8),
                                                          padding: getPadding(
                                                              top: 16,
                                                              bottom: 16),
                                                          decoration: AppDecoration
                                                              .outlineGray2001
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 16,
                                                                    right: 16),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Container(
                                                                        height:
                                                                            getVerticalSize(40),
                                                                        width: getHorizontalSize(
                                                                            40),
                                                                        decoration: BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                            color: ColorConstant.iconButtonBgColor),
                                                                        child:
                                                                            Padding(
                                                                          padding: getPadding(
                                                                              top: 6.36,
                                                                              bottom: 6.36,
                                                                              left: 1.82,
                                                                              right: 1.82),
                                                                          child:
                                                                              CustomImageView(svgPath: ImageConstant.imgCut),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  8,
                                                                              bottom:
                                                                                  8,
                                                                              left:
                                                                                  16),
                                                                          child: Text(
                                                                              "lbl_maybank".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterBold16.copyWith(height: getVerticalSize(1.24)))),
                                                                    ],
                                                                  ),
                                                                  CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowright,
                                                                    height:
                                                                        getSize(
                                                                            20.00),
                                                                    width: getSize(
                                                                        20.00),
                                                                  )
                                                                ]),
                                                          )),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        Get.toNamed(AppRoutes
                                                            .depositDepositAmountScreen);
                                                      },
                                                      child: Container(
                                                          margin:
                                                              getMargin(top: 8),
                                                          padding: getPadding(
                                                              top: 16,
                                                              bottom: 16),
                                                          decoration: AppDecoration
                                                              .outlineGray2001
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 16,
                                                                    right: 16),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Container(
                                                                        height:
                                                                            getVerticalSize(40),
                                                                        width: getHorizontalSize(
                                                                            40),
                                                                        decoration: BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                            color: ColorConstant.iconButtonBgColor),
                                                                        child:
                                                                            Padding(
                                                                          padding: getPadding(
                                                                              top: 6.36,
                                                                              bottom: 6.36,
                                                                              left: 1.82,
                                                                              right: 1.82),
                                                                          child:
                                                                              CustomImageView(svgPath: ImageConstant.imgBank),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  8,
                                                                              bottom:
                                                                                  8,
                                                                              left:
                                                                                  16),
                                                                          child: Text(
                                                                              "lbl_bank_jago".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterBold16.copyWith(height: getVerticalSize(1.24)))),
                                                                    ],
                                                                  ),
                                                                  CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowright,
                                                                    height:
                                                                        getSize(
                                                                            20.00),
                                                                    width: getSize(
                                                                        20.00),
                                                                  )
                                                                ]),
                                                          )),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        Get.toNamed(AppRoutes
                                                            .depositDepositAmountScreen);
                                                      },
                                                      child: Container(
                                                          margin:
                                                              getMargin(top: 8),
                                                          padding: getPadding(
                                                              top: 16,
                                                              bottom: 16),
                                                          decoration: AppDecoration
                                                              .outlineGray2001
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 24,
                                                                    right: 24),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Container(
                                                                        height:
                                                                            getVerticalSize(40),
                                                                        width: getHorizontalSize(
                                                                            40),
                                                                        decoration: BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                            color: ColorConstant.iconButtonBgColor),
                                                                        child:
                                                                            Padding(
                                                                          padding: getPadding(
                                                                              top: 6.36,
                                                                              bottom: 6.36,
                                                                              left: 1.82,
                                                                              right: 1.82),
                                                                          child:
                                                                              CustomImageView(svgPath: ImageConstant.imgIcon),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  8,
                                                                              bottom:
                                                                                  0,
                                                                              left:
                                                                                  16),
                                                                          child: Text(
                                                                              "lbl_bank_permata".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterBold16.copyWith(height: getVerticalSize(1.24)))),
                                                                    ],
                                                                  ),
                                                                  CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowright,
                                                                    height:
                                                                        getSize(
                                                                            20.00),
                                                                    width: getSize(
                                                                        20.00),
                                                                  )
                                                                ]),
                                                          )).paddingOnly(bottom: 40),
                                                    )
                                                  ]))).paddingOnly(top: 24),
                                        ).paddingOnly(top: 118)),
                                  ]))))
                ])),
          ),
        ));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
