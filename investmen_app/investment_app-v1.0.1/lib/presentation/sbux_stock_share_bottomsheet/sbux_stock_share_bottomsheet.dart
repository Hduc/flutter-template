import '../sbux_stock_share_bottomsheet/widgets/sharetoapp_item_widget.dart';
import 'controller/sbux_stock_share_controller.dart';
import 'models/sharetoapp_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class SbuxStockShareBottomsheet extends StatelessWidget {
  SbuxStockShareBottomsheet(this.controller);

  SbuxStockShareController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: size.width,
            padding: getPadding(top: 16, bottom: 16),
            decoration: AppDecoration.fillWhiteA700ea
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL13),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: getPadding(left: 16, right: 16),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(
                                height: 40,
                                width: 40,
                                variant: IconButtonVariant.OutlineBlack9000c,
                                shape: IconButtonShape.RoundedBorder1,
                                padding: IconButtonPadding.PaddingAll10,
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgShareiconsquare)),
                            Padding(
                                padding: getPadding(left: 8, top: 1, bottom: 1),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("msg_ios_kit_for_figma".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtSFProTextSemibold15
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.12))),
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Text("lbl_figma_com".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtSFProTextRegular13
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.16))))
                                    ])),
                            Spacer(),
                            CustomIconButton(
                                height: 30,
                                width: 30,
                                margin: getMargin(top: 5, bottom: 5),
                                variant: IconButtonVariant.FillGray60014,
                                shape: IconButtonShape.CircleBorder15,
                                padding: IconButtonPadding.PaddingAll5,
                                onTap: () {
                                  onTapBtnClose();
                                },
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgClose))
                          ])),
                  Container(
                      height: getVerticalSize(1.00),
                      width: size.width,
                      margin: getMargin(top: 16),
                      decoration:
                          BoxDecoration(color: ColorConstant.gray8004d)),
                  Align(
                      alignment: Alignment.centerRight,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(left: 19, top: 20),
                          child: IntrinsicWidth(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Padding(
                                    padding: getPadding(bottom: 5),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                    height:
                                                        getVerticalSize(64.00),
                                                    width: getHorizontalSize(
                                                        65.00),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgPhoto,
                                                              height: getSize(
                                                                  63.00),
                                                              width: getSize(
                                                                  63.00),
                                                              radius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          31.00)),
                                                              alignment:
                                                                  Alignment
                                                                      .center),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgReplaceme,
                                                              height: getSize(
                                                                  20.00),
                                                              width: getSize(
                                                                  20.00),
                                                              radius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          4.00)),
                                                              alignment: Alignment
                                                                  .bottomRight)
                                                        ])),
                                                Container(
                                                    width: getHorizontalSize(
                                                        55.00),
                                                    margin: getMargin(top: 3),
                                                    child: Text(
                                                        "lbl_apple_mac_mini".tr,
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .txtSFProTextRegular11
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.07),
                                                                height:
                                                                    getVerticalSize(
                                                                        0.99))))
                                              ]),
                                          Padding(
                                              padding: getPadding(
                                                  left: 25, bottom: 12),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        height: getVerticalSize(
                                                            64.00),
                                                        width:
                                                            getHorizontalSize(
                                                                65.00),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgPhoto63x63,
                                                                  height:
                                                                      getSize(
                                                                          63.00),
                                                                  width: getSize(
                                                                      63.00),
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              31.00)),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgReplaceme20x20,
                                                                  height:
                                                                      getSize(
                                                                          20.00),
                                                                  width: getSize(
                                                                      20.00),
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              4.00)),
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight)
                                                            ])),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 2),
                                                        child: Text(
                                                            "lbl_first_last".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtSFProTextRegular11
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.07),
                                                                    height: getVerticalSize(
                                                                        0.99))))
                                                  ]))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 24),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getVerticalSize(64.00),
                                              width: getHorizontalSize(65.00),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                            height:
                                                                getSize(63.00),
                                                            width:
                                                                getSize(63.00),
                                                            decoration:
                                                                AppDecoration
                                                                    .outlineBlack9000c,
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgPhoto42x42,
                                                                      height: getSize(
                                                                          42.00),
                                                                      width: getSize(
                                                                          42.00),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              21.00)),
                                                                      alignment:
                                                                          Alignment
                                                                              .topLeft),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgPhoto1,
                                                                      height: getSize(
                                                                          42.00),
                                                                      width: getSize(
                                                                          42.00),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              21.00)),
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight)
                                                                ]))),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgReplaceme20x20,
                                                        height: getSize(20.00),
                                                        width: getSize(20.00),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    4.00)),
                                                        alignment: Alignment
                                                            .bottomRight)
                                                  ])),
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: Text("lbl_group_name".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSFProTextRegular11
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.07),
                                                          height:
                                                              getVerticalSize(
                                                                  0.99)))),
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Text("lbl_2_people".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSFProTextRegular11Gray8009901
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.07),
                                                          height:
                                                              getVerticalSize(
                                                                  0.99))))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 24, bottom: 17),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                    height:
                                                        getVerticalSize(64.00),
                                                    width: getHorizontalSize(
                                                        65.00),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgPhoto63x63,
                                                              height: getSize(
                                                                  63.00),
                                                              width: getSize(
                                                                  63.00),
                                                              radius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          31.00)),
                                                              alignment:
                                                                  Alignment
                                                                      .center),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgReplaceme20x20,
                                                              height: getSize(
                                                                  20.00),
                                                              width: getSize(
                                                                  20.00),
                                                              radius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          4.00)),
                                                              alignment: Alignment
                                                                  .bottomRight)
                                                        ])),
                                                Padding(
                                                    padding: getPadding(top: 2),
                                                    child: Text(
                                                        "lbl_first_last".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtSFProTextRegular11
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.07),
                                                                height:
                                                                    getVerticalSize(
                                                                        0.99))))
                                              ]),
                                          Padding(
                                              padding: getPadding(left: 21),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        height: getVerticalSize(
                                                            64.00),
                                                        width:
                                                            getHorizontalSize(
                                                                65.00),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgPhoto63x63,
                                                                  height:
                                                                      getSize(
                                                                          63.00),
                                                                  width: getSize(
                                                                      63.00),
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              31.00)),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgReplaceme20x20,
                                                                  height:
                                                                      getSize(
                                                                          20.00),
                                                                  width: getSize(
                                                                      20.00),
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              4.00)),
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight)
                                                            ])),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 4),
                                                        child: Text(
                                                            "lbl_first_last".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtSFProTextRegular11
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.07),
                                                                    height: getVerticalSize(
                                                                        0.99))))
                                                  ]))
                                        ]))
                              ])))),
                  Container(
                      height: getVerticalSize(1.00),
                      width: size.width,
                      margin: getMargin(top: 15),
                      decoration:
                          BoxDecoration(color: ColorConstant.gray8004d)),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          height: getVerticalSize(98.00),
                          child: Obx(() => ListView.separated(
                              padding: getPadding(left: 16, top: 20),
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(32.00));
                              },
                              itemCount: controller.sbuxStockShareModelObj.value
                                  .sharetoappItemList.length,
                              itemBuilder: (context, index) {
                                SharetoappItemModel model = controller
                                    .sbuxStockShareModelObj
                                    .value
                                    .sharetoappItemList[index];
                                return SharetoappItemWidget(model);
                              })))),
                  Container(
                      width: getHorizontalSize(343.00),
                      margin:
                          getMargin(left: 16, top: 22, right: 16, bottom: 80),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder12),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                width: getHorizontalSize(343.00),
                                decoration: AppDecoration.fillWhiteA700
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder12),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          padding: getPadding(
                                              left: 16,
                                              top: 12,
                                              right: 16,
                                              bottom: 12),
                                          decoration: AppDecoration
                                              .fillWhiteA700
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(top: 2),
                                                    child: Text(
                                                        "msg_add_to_reading_list"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtSFProTextRegular17
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.08)))),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 1, bottom: 3),
                                                    child: Text("lbl3".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtSFProTextMedium15
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.12))))
                                              ])),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(343.00),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.gray8004d)),
                                      Container(
                                          padding: getPadding(
                                              left: 16,
                                              top: 13,
                                              right: 16,
                                              bottom: 13),
                                          decoration: AppDecoration
                                              .fillWhiteA700
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("lbl_add_bookmark".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtSFProTextRegular17
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.08))),
                                                Padding(
                                                    padding: getPadding(
                                                        right: 1, bottom: 2),
                                                    child: Text("lbl4".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtSFProTextMedium15
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.12))))
                                              ])),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(343.00),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.gray8004d)),
                                      Container(
                                          padding: getPadding(
                                              left: 16,
                                              top: 13,
                                              right: 16,
                                              bottom: 13),
                                          decoration: AppDecoration
                                              .fillWhiteA700
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("msg_add_to_favorites".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtSFProTextRegular17
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.08))),
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 3),
                                                    child: Text("lbl5".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtSFProTextMedium15
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.12))))
                                              ])),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(343.00),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.gray8004d)),
                                      Container(
                                          padding: getPadding(
                                              left: 16,
                                              top: 12,
                                              right: 16,
                                              bottom: 12),
                                          decoration: AppDecoration
                                              .fillWhiteA700
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(top: 2),
                                                    child: Text(
                                                        "lbl_find_on_page".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtSFProTextRegular17
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.08)))),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 1,
                                                        right: 1,
                                                        bottom: 4),
                                                    child: Text("lbl6".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtSFProTextMedium15
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.12))))
                                              ]))
                                    ])),
                            Padding(
                                padding: getPadding(left: 16, top: 16),
                                child: Text("lbl_edit_actions".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtSFProTextRegular17LightblueA700
                                        .copyWith(
                                            height: getVerticalSize(1.08))))
                          ]))
                ])));
  }

  onTapBtnClose() {
    Get.back();
  }
}
