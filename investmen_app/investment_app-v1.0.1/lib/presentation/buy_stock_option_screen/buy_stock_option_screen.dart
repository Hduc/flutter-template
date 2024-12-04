import 'controller/buy_stock_option_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

class BuyStockOptionScreen extends GetWidget<BuyStockOptionController> {
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
              height: size.height,
              width: size.width,
              child: Stack(alignment: Alignment.topRight, children: [
                Padding(
                  padding: getPadding(top: 20),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          height: getVerticalSize(251.00),
                          width: getHorizontalSize(width),
                          padding: getPadding(
                              left: 24, top: 16, right: 24, bottom: 16),
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
                ),
                Padding(
                  padding: getPadding(top: 20),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          width: getHorizontalSize(253.00),
                          padding: getPadding(
                              left: 48, top: 30, right: 48, bottom: 30),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      ImageConstant.imgRectangle1933),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 90),
                                    child: Text("lbl_buy2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterSemiBold20
                                            .copyWith(
                                                height: getVerticalSize(1.12))))
                              ]))),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 110),
                  child: Container(
                      padding: getPadding(all: 24),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL32),
                      child: ListView(
                          // mainAxisSize: MainAxisSize.min,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                padding: getPadding(
                                    left: 16, top: 17, right: 16, bottom: 17),
                                decoration: AppDecoration.outlineGray2001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder24),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse2832,
                                              height: getSize(40.00),
                                              width: getSize(40.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(20.00))),
                                          Padding(
                                              padding: getPadding(left: 12),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("Nightverse",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold14Gray800
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.19))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 6),
                                                        child: Text("Night",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegularblack
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        1.27))))
                                                  ])),
                                        ],
                                      ),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgChart,
                                          height: getVerticalSize(40.00),
                                          width: getHorizontalSize(57.00),
                                          margin: getMargin(left: 44)),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_35_123".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterBold14Gray800
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.19))),
                                            Padding(
                                                padding: getPadding(top: 6),
                                                child: Text("lbl_142".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular12Green500
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.27))))
                                          ])
                                      // Row(
                                      //   children: [
                                      //
                                      //     Padding(
                                      //         padding: getPadding(left: 28),
                                      //         child: )
                                      //   ],
                                      // )
                                    ])),
                            Padding(
                                padding: getPadding(top: 26),
                                child: Text("lbl_market_orders".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterThin16.copyWith(
                                        letterSpacing: getHorizontalSize(0.20),
                                        height: getVerticalSize(1.29)))),
                            GestureDetector(
                              onTap: () =>
                                  Get.toNamed(AppRoutes.summaryOneScreen),
                              child: Container(
                                  margin: getMargin(top: 18),
                                  padding: getPadding(all: 16),
                                  decoration: AppDecoration.outlineGray2001
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            CustomIconButton(
                                                height: 40,
                                                width: 40,
                                                margin: getMargin(
                                                    top: 9, bottom: 9),
                                                shape: IconButtonShape
                                                    .CircleBorder18,
                                                padding: IconButtonPadding
                                                    .PaddingAll10,
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgPlusGray800)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 16, top: 1),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          "lbl_buy_in_dollars"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBold14Gray800
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.19))),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  175.00),
                                                          margin:
                                                              getMargin(top: 5),
                                                          child: Text(
                                                              "msg_buy_sbux_for_a_dollar"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegularblack
                                                                  .copyWith(
                                                                      height: getVerticalSize(
                                                                          1.27))))
                                                    ])),
                                          ],
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgArrowright,
                                          height: getSize(20.00),
                                          width: getSize(20.00),
                                        )
                                      ])),
                            ),
                            Container(
                                margin: getMargin(top: 8),
                                padding: getPadding(
                                    left: 16, top: 17, right: 16, bottom: 17),
                                decoration: AppDecoration.outlineGray2001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder24),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          CustomIconButton(
                                              height: 40,
                                              width: 40,
                                              margin:
                                                  getMargin(top: 8, bottom: 8),
                                              shape: IconButtonShape
                                                  .CircleBorder18,
                                              padding: IconButtonPadding
                                                  .PaddingAll10,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgClockGray80036x36)),
                                          Padding(
                                              padding: getPadding(left: 16),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_buy_in_shares".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold14Gray800
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.19))),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                132.00),
                                                        margin:
                                                            getMargin(top: 5),
                                                        child: Text(
                                                            "msg_buy_sbux_at_a_minimum"
                                                                .tr,
                                                            maxLines: null,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegularblack
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        1.27))))
                                                  ])),
                                        ],
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getSize(20.00),
                                        width: getSize(20.00),
                                      )
                                    ])),
                            Padding(
                                padding: getPadding(top: 26),
                                child: Text("msg_conditional_orders".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterThin16.copyWith(
                                        letterSpacing: getHorizontalSize(0.20),
                                        height: getVerticalSize(1.29)))),
                            Container(
                                margin: getMargin(top: 18),
                                padding: getPadding(
                                    left: 16, top: 17, right: 16, bottom: 17),
                                decoration: AppDecoration.outlineGray2001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder24),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          CustomIconButton(
                                              height: 40,
                                              width: 40,
                                              margin:
                                                  getMargin(top: 8, bottom: 8),
                                              shape: IconButtonShape
                                                  .CircleBorder18,
                                              padding: IconButtonPadding
                                                  .PaddingAll10,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgSettings)),
                                          Padding(
                                              padding: getPadding(left: 16),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_limit_order".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold14Gray800
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.19))),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                182.00),
                                                        margin:
                                                            getMargin(top: 6),
                                                        child: Text(
                                                            "msg_buy_sbux_at_a_maximum"
                                                                .tr,
                                                            maxLines: null,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegularblack
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        1.27))))
                                                  ])),
                                        ],
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getSize(20.00),
                                        width: getSize(20.00),
                                      )
                                    ])),
                            Container(
                                margin: getMargin(top: 8, bottom: 46),
                                padding: getPadding(
                                    left: 16, top: 15, right: 16, bottom: 15),
                                decoration: AppDecoration.outlineGray2001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder24),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          CustomIconButton(
                                              height: 40,
                                              width: 40,
                                              margin: getMargin(
                                                  top: 10, bottom: 10),
                                              shape: IconButtonShape
                                                  .CircleBorder18,
                                              padding: IconButtonPadding
                                                  .PaddingAll10,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconlinearrowsupdown)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 16, top: 3),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_stop_order".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold14Gray800
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.19))),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                178.00),
                                                        margin:
                                                            getMargin(top: 5),
                                                        child: Text(
                                                            "msg_buy_sbux_if_rises"
                                                                .tr,
                                                            maxLines: null,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegularblack
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        1.27))))
                                                  ])),
                                        ],
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getSize(20.00),
                                        width: getSize(20.00),
                                      )
                                    ]))
                          ])),
                )
              ]))),
    );
  }

  onTapBtnArrowleft() {
    Get.back();
    Get.back();
  }
}
