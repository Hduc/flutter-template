import 'controller/exchange_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_button.dart';
import 'package:investment_app/widgets/custom_drop_down.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

class ExchangeScreen extends GetWidget<ExchangeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            // onTapBtnArrowleft();
                          },
                          child: CustomImageView(
                              svgPath:
                                  ImageConstant.imgArrowleftWhiteA70050x50)),
                      SizedBox(
                        width: getHorizontalSize(76),
                      ),
                      Text(
                        "lbl_convert".tr,
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
              Container(
                decoration: AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL32,
                ),
                child: ListView(
                  padding: getPadding(top: 24, left: 24, right: 24),
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                                width: getHorizontalSize(width),
                                margin: getMargin(all: 0),
                                padding: getPadding(
                                    left: 24, top: 29, right: 24, bottom: 29),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    image: DecorationImage(
                                        image:
                                            fs.Svg(ImageConstant.imgGroup438),
                                        fit: BoxFit.cover)),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: getPadding(bottom: 2),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_send".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtDarkBlack12Width500
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.00))),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 10),
                                                    child: Text("lbl_0_4325".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold16
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.24))))
                                              ])),
                                      Container(
                                        width: getSize(96),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgEllipse28322,
                                                height: getSize(24.00),
                                                width: getSize(24.00),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(12.00)),
                                                margin: getMargin(
                                                    top: 11, bottom: 0)),
                                            CustomDropDown(
                                                width: 64,
                                                focusNode: FocusNode(),
                                                icon: Container(
                                                    margin: getMargin(
                                                        left: 10,
                                                        top: 10,
                                                        bottom: 0),
                                                    child: Center(
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowdownGray800),
                                                    )),
                                                hintText: "lbl_spot".tr,
                                                margin: getMargin(
                                                    left: 0,
                                                    top: 14,
                                                    bottom: 13),
                                                variant: DropDownVariant.None,
                                                fontStyle: DropDownFontStyle
                                                    .InterBold16,
                                                // items: controller
                                                //     .exchangeModelObj
                                                //     .value
                                                //     .dropdownItemList,
                                                onChanged: (value) {
                                                  controller.onSelected(value);
                                                })
                                          ],
                                        ),
                                      )
                                    ])),
                            SizedBox(
                              height: getVerticalSize(0),
                            ),
                            Container(
                                width: getHorizontalSize(width),
                                margin: getMargin(all: 0),
                                padding: getPadding(
                                    left: 24, top: 29, right: 24, bottom: 29),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    image: DecorationImage(
                                        image:
                                            fs.Svg(ImageConstant.imgGroup439),
                                        fit: BoxFit.cover)),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: getPadding(bottom: 2),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_receive".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtDarkBlack12Width500
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.00))),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 10),
                                                    child: Text("lbl_24_593".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold16
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.24))))
                                              ])),
                                      Container(
                                        width: getSize(96),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgEllipse2832,
                                                height: getSize(24.00),
                                                width: getSize(24.00),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(12.00)),
                                                margin: getMargin(
                                                    top: 11, bottom: 0)),
                                            CustomDropDown(
                                                width: 65,
                                                focusNode: FocusNode(),
                                                icon: Container(
                                                    margin: getMargin(
                                                        left: 10,
                                                        top: 10,
                                                        bottom: 0),
                                                    child: Center(
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowdownGray800),
                                                    )),
                                                hintText: "lbl_sbux2".tr,
                                                margin: getMargin(
                                                    left: 0,
                                                    top: 14,
                                                    bottom: 13),
                                                variant: DropDownVariant.None,
                                                fontStyle: DropDownFontStyle
                                                    .InterBold16,
                                                // items: controller
                                                //     .exchangeModelObj
                                                //     .value
                                                //     .dropdownItemList,
                                                onChanged: (value) {
                                                  controller.onSelected1(value);
                                                })
                                          ],
                                        ),
                                      )
                                    ])),
                          ],
                        ),
                        CustomIconButton(
                                height: getVerticalSize(56),
                                width: getHorizontalSize(56),
                                variant: IconButtonVariant.FillBlue700,
                                shape: IconButtonShape.CircleBorder28,
                                padding: IconButtonPadding.PaddingAll1,
                                child: CustomImageView(
                                    svgPath:
                                        ImageConstant.imgMaximizeWhiteA700))
                            .paddingOnly(
                                left: getHorizontalSize(135),
                                top: getVerticalSize(89)),
                      ],
                    ),
                    Container(
                        margin: getMargin(top: 16),
                        padding: getPadding(top: 25, bottom: 25),
                        decoration: AppDecoration.outlineGray2001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder24),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("msg_available_balance2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16
                                      .copyWith(height: getVerticalSize(1.24))),
                              Text("lbl_112_340_00".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold16
                                      .copyWith(height: getVerticalSize(1.24)))
                            ])),
                    Container(
                        margin: getMargin(top: 9),
                        padding: getPadding(all: 24),
                        decoration: AppDecoration.outlineGray2001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder24),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: getPadding(top: 3),
                                  child: Text("lbl_exchange_fee".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular16
                                          .copyWith(
                                              height: getVerticalSize(1.24)))),
                              Padding(
                                  padding: getPadding(top: 1, bottom: 1),
                                  child: Text("lbl_20".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold16.copyWith(
                                          height: getVerticalSize(1.24))))
                            ])),
                  ],
                ),
              ).paddingOnly(top: 118),
              CustomButton(
                  onTap: () {
                    Get.toNamed(AppRoutes.summaryTwoScreen);
                  },
                  alignment: Alignment.bottomCenter,
                  height: 56,
                  width: 327,
                  text: "lbl_continue".tr,
                  margin: getMargin(bottom: 10))
            ],
          ),
        ));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
/*

 */
