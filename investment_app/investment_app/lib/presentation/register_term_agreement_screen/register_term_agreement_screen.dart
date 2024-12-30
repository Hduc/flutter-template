import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/register_term_agreement_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:investment_app/widgets/app_bar/appbar_title.dart';
import 'package:investment_app/widgets/app_bar/custom_app_bar.dart';
import 'package:investment_app/widgets/custom_button.dart';

class RegisterTermAgreementScreen
    extends GetWidget<RegisterTermAgreementController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.lightBlue900,
      body:Container(
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
                        variant: IconButtonVariant
                            .FillWhiteA70014,
                        onTap: () {
                          Get.back();
                        },
                        child: CustomImageView(
                            svgPath: ImageConstant
                                .imgArrowleftWhiteA70050x50)
                    ),
                    SizedBox(width: getHorizontalSize(77),),
                    Text(
                      "lbl_terms".tr,
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
                    padding: getPadding(left: 24,right: 24,top: 0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: getVerticalSize(24),),
                                Container(
                                    width: getHorizontalSize(236.00),
                                    margin: getMargin(top: 2),
                                    child: Text("msg_by_checking_the".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterSemiBold20Gray800
                                            .copyWith(
                                            height: getVerticalSize(1.12)))),
                                Padding(
                                    padding: getPadding(left: 3, top: 26),
                                    child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin:
                                              getMargin(top: 1, bottom: 52),
                                              color: ColorConstant.blue700,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadiusStyle
                                                      .roundedBorder4),
                                              child: Container(
                                                  height: getSize(18.00),
                                                  width: getSize(18.00),
                                                  padding: getPadding(all: 3),
                                                  decoration: AppDecoration
                                                      .fillBlue700
                                                      .copyWith(
                                                      borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder4),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCheckmark,
                                                        height: getSize(12.00),
                                                        width: getSize(12.00),
                                                        alignment:
                                                        Alignment.center)
                                                  ]))),
                                          Container(
                                              width: getHorizontalSize(227.00),
                                              margin: getMargin(left: 15),
                                              child: Text(
                                                  "msg_lorem_ipsum_is_simply".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular16Gray800
                                                      .copyWith(
                                                      height: getVerticalSize(
                                                          1.24))))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 3, top: 16),
                                    child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin:
                                              getMargin(top: 1, bottom: 52),
                                              color: ColorConstant.blue700,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadiusStyle
                                                      .roundedBorder4),
                                              child: Container(
                                                  height: getSize(18.00),
                                                  width: getSize(18.00),
                                                  padding: getPadding(all: 3),
                                                  decoration: AppDecoration
                                                      .fillBlue700
                                                      .copyWith(
                                                      borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder4),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCheckmark,
                                                        height: getSize(12.00),
                                                        width: getSize(12.00),
                                                        alignment:
                                                        Alignment.center)
                                                  ]))),
                                          Container(
                                              width: getHorizontalSize(227.00),
                                              margin: getMargin(left: 15),
                                              child: Text(
                                                  "msg_lorem_ipsum_is_simply2".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular16Gray800
                                                      .copyWith(
                                                      height: getVerticalSize(
                                                          1.24))))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 3, top: 16),
                                    child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin:
                                              getMargin(top: 1, bottom: 52),
                                              color: ColorConstant.blue700,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadiusStyle
                                                      .roundedBorder4),
                                              child: Container(
                                                  height: getSize(18.00),
                                                  width: getSize(18.00),
                                                  padding: getPadding(all: 3),
                                                  decoration: AppDecoration
                                                      .fillBlue700
                                                      .copyWith(
                                                      borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder4),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCheckmark,
                                                        height: getSize(12.00),
                                                        width: getSize(12.00),
                                                        alignment:
                                                        Alignment.center)
                                                  ]))),
                                          Container(
                                              width: getHorizontalSize(227.00),
                                              margin: getMargin(left: 15),
                                              child: Text(
                                                  "msg_lorem_ipsum_has".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular16Gray800
                                                      .copyWith(
                                                      height: getVerticalSize(
                                                          1.24))))
                                        ])),

                                Padding(
                                    padding: getPadding(left: 3, top: 17),
                                    child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin:
                                              getMargin(top: 1, bottom: 52),
                                              color: ColorConstant.blue700,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadiusStyle
                                                      .roundedBorder4),
                                              child: Container(
                                                  height: getSize(18.00),
                                                  width: getSize(18.00),
                                                  padding: getPadding(all: 3),
                                                  decoration: AppDecoration
                                                      .fillBlue700
                                                      .copyWith(
                                                      borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder4),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCheckmark,
                                                        height: getSize(12.00),
                                                        width: getSize(12.00),
                                                        alignment:
                                                        Alignment.center)
                                                  ]))),
                                          Container(
                                              width: getHorizontalSize(227.00),
                                              margin: getMargin(left: 15),
                                              child: Text(
                                                  "msg_lorem_ipsum_is_simply2".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular16Gray800
                                                      .copyWith(
                                                      height: getVerticalSize(
                                                          1.24))))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 3, top: 16),
                                    child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin:
                                              getMargin(top: 1, bottom: 52),
                                              color: ColorConstant.blue700,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadiusStyle
                                                      .roundedBorder4),
                                              child: Container(
                                                  height: getSize(18.00),
                                                  width: getSize(18.00),
                                                  padding: getPadding(all: 3),
                                                  decoration: AppDecoration
                                                      .fillBlue700
                                                      .copyWith(
                                                      borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder4),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCheckmark,
                                                        height: getSize(12.00),
                                                        width: getSize(12.00),
                                                        alignment:
                                                        Alignment.center)
                                                  ]))),
                                          Container(
                                              width: getHorizontalSize(227.00),
                                              margin: getMargin(left: 15),
                                              child: Text(
                                                  "msg_lorem_ipsum_is_simply".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular16Gray800
                                                      .copyWith(
                                                      height: getVerticalSize(
                                                          1.24))))
                                        ]))
                              ]),
                          CustomButton( onTap: () => Get.toNamed(AppRoutes.registerSetPinScreen),height: 56, width: 327, text: "lbl_continue".tr).paddingOnly(bottom: 16)]
                    ).paddingOnly(top:0),
                  )),
            )],
        ),
      ),
    );












      Scaffold(
        backgroundColor: ColorConstant.lightBlue900,
        appBar: CustomAppBar(
            height: getVerticalSize(56.00),
            leadingWidth: 74,
            leading: AppbarIconbutton(
                svgPath: ImageConstant.imgArrowleftWhiteA70050x50,
                margin: getMargin(left: 24),
                onTap: onTapArrowleft16),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_terms".tr)),
        body: SafeArea(
          child: SizedBox(
              width: size.width,
              child: SingleChildScrollView(
                  child: Container(
                      margin:
                          getMargin(left: 24, top: 32, right: 24, bottom: 5),
                      padding: getPadding(
                          left: 24, top: 22, right: 24, bottom: 22),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder32),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                width: getHorizontalSize(236.00),
                                margin: getMargin(top: 2),
                                child: Text("msg_by_checking_the".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterSemiBold20Gray800
                                        .copyWith(
                                            height: getVerticalSize(1.12)))),
                            Padding(
                                padding: getPadding(left: 3, top: 26),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin:
                                              getMargin(top: 1, bottom: 52),
                                          color: ColorConstant.blue700,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder4),
                                          child: Container(
                                              height: getSize(18.00),
                                              width: getSize(18.00),
                                              padding: getPadding(all: 3),
                                              decoration: AppDecoration
                                                  .fillBlue700
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder4),
                                              child: Stack(children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCheckmark,
                                                    height: getSize(12.00),
                                                    width: getSize(12.00),
                                                    alignment:
                                                        Alignment.center)
                                              ]))),
                                      Container(
                                          width: getHorizontalSize(227.00),
                                          margin: getMargin(left: 15),
                                          child: Text(
                                              "msg_lorem_ipsum_is_simply".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterRegular16Gray800
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.24))))
                                    ])),
                            Padding(
                                padding: getPadding(left: 3, top: 16),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin:
                                              getMargin(top: 1, bottom: 52),
                                          color: ColorConstant.blue700,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder4),
                                          child: Container(
                                              height: getSize(18.00),
                                              width: getSize(18.00),
                                              padding: getPadding(all: 3),
                                              decoration: AppDecoration
                                                  .fillBlue700
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder4),
                                              child: Stack(children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCheckmark,
                                                    height: getSize(12.00),
                                                    width: getSize(12.00),
                                                    alignment:
                                                        Alignment.center)
                                              ]))),
                                      Container(
                                          width: getHorizontalSize(227.00),
                                          margin: getMargin(left: 15),
                                          child: Text(
                                              "msg_lorem_ipsum_is_simply2".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterRegular16Gray800
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.24))))
                                    ])),
                            Padding(
                                padding:
                                    getPadding(left: 3, top: 16, right: 3),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: getMargin(bottom: 51),
                                          color: ColorConstant.blue700,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder4),
                                          child: Container(
                                              height: getSize(18.00),
                                              width: getSize(18.00),
                                              padding: getPadding(all: 3),
                                              decoration: AppDecoration
                                                  .fillBlue700
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder4),
                                              child: Stack(children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCheckmark,
                                                    height: getSize(12.00),
                                                    width: getSize(12.00),
                                                    alignment:
                                                        Alignment.center)
                                              ]))),
                                      Container(
                                          width: getHorizontalSize(239.00),
                                          child: Text(
                                              "msg_lorem_ipsum_has".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterRegular16Gray800
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.24))))
                                    ])),
                            Padding(
                                padding: getPadding(left: 3, top: 17),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin:
                                              getMargin(top: 1, bottom: 52),
                                          color: ColorConstant.blue700,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder4),
                                          child: Container(
                                              height: getSize(18.00),
                                              width: getSize(18.00),
                                              padding: getPadding(all: 3),
                                              decoration: AppDecoration
                                                  .fillBlue700
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder4),
                                              child: Stack(children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCheckmark,
                                                    height: getSize(12.00),
                                                    width: getSize(12.00),
                                                    alignment:
                                                        Alignment.center)
                                              ]))),
                                      Container(
                                          width: getHorizontalSize(227.00),
                                          margin: getMargin(left: 15),
                                          child: Text(
                                              "msg_lorem_ipsum_is_simply2".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterRegular16Gray800
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.24))))
                                    ])),
                            Padding(
                                padding: getPadding(left: 3, top: 16),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin:
                                              getMargin(top: 1, bottom: 52),
                                          color: ColorConstant.blue700,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder4),
                                          child: Container(
                                              height: getSize(18.00),
                                              width: getSize(18.00),
                                              padding: getPadding(all: 3),
                                              decoration: AppDecoration
                                                  .fillBlue700
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder4),
                                              child: Stack(children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCheckmark,
                                                    height: getSize(12.00),
                                                    width: getSize(12.00),
                                                    alignment:
                                                        Alignment.center)
                                              ]))),
                                      Container(
                                          width: getHorizontalSize(227.00),
                                          margin: getMargin(left: 15),
                                          child: Text(
                                              "msg_lorem_ipsum_is_simply".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterRegular16Gray800
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.24))))
                                    ]))
                          ])))),
        ),
        bottomNavigationBar: Padding(
            padding: getPadding(left: 24, right: 24, bottom: 40),
            child:
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomButton( onTap: () => Get.toNamed(AppRoutes.registerSetPinScreen),height: 56, width: 327, text: "lbl_continue".tr)
            ])));
  }

  onTapArrowleft16() {
    Get.back();
  }
}
