import 'controller/service_detail_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';
import 'package:hair_salon_app/widgets/custom_bottom_bar.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

class ServiceDetailFourScreen extends GetWidget<ServiceDetailFourController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SafeArea(
          child: Container(
              width: double.maxFinite,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: getVerticalSize(209),
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle40,
                              height: getVerticalSize(209),
                              width: getHorizontalSize(428),
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  padding: getPadding(top: 8, bottom: 8),
                                  decoration: AppDecoration.fillBlack90021,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomAppBar(
                                            height: getVerticalSize(193),
                                            leadingWidth: 52,
                                            leading: AppbarIconbutton1(
                                                svgPath: ImageConstant
                                                    .imgArrowleftBlack900,
                                                margin: getMargin(left: 16),
                                                onTap: () {
                                                  onTapArrowleft11();
                                                }),
                                            actions: [
                                              AppbarIconbutton1(
                                                  svgPath: ImageConstant
                                                      .imgBookmark,
                                                  margin: getMargin(
                                                      left: 16, right: 16),
                                                  onTap: () {
                                                    onTapBookmark5();
                                                  })
                                            ])
                                      ])))
                        ])),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  padding: getPadding(
                                      left: 16,
                                      top: 14,
                                      right: 16,
                                      bottom: 14),
                                  decoration: AppDecoration.outlineGray3001,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 6),
                                                  child: Text(
                                                      "msg_barbarllea_inova"
                                                          .tr,
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtSFProTextBold20)),
                                              CustomButton(
                                                  height: getVerticalSize(30),
                                                  width:
                                                      getHorizontalSize(84),
                                                  text: "lbl_open".tr,
                                                  variant: ButtonVariant
                                                      .FillPink50,
                                                  shape: ButtonShape
                                                      .CircleBorder15,
                                                  padding: ButtonPadding
                                                      .PaddingAll5,
                                                  fontStyle: ButtonFontStyle
                                                      .SFProTextSemibold16)
                                            ]),
                                        Padding(
                                            padding: getPadding(top: 2),
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIclocationPink800,
                                                  height: getSize(16),
                                                  width: getSize(16),
                                                  margin:
                                                      getMargin(bottom: 1)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8, top: 1),
                                                  child: Text(
                                                      "msg_parker_rd_allentown"
                                                          .tr,
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtFootnote))
                                            ])),
                                        Padding(
                                            padding:
                                                getPadding(top: 7, bottom: 2),
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgIcstar,
                                                  height: getSize(16),
                                                  width: getSize(16)),
                                              Padding(
                                                  padding:
                                                      getPadding(left: 5),
                                                  child: Text("lbl_4_8".tr,
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtFootnote)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 2, top: 1),
                                                  child: Text(
                                                      "msg_2748_reviews".tr,
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtSFProTextRegular12Gray600))
                                            ]))
                                      ]))),
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  padding: getPadding(
                                      left: 14,
                                      top: 19,
                                      right: 14,
                                      bottom: 19),
                                  decoration: AppDecoration.outlineGray300,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 2, right: 13),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtDescription();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 2,
                                                              bottom: 2),
                                                          child: Text(
                                                              "lbl_description"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtBodyGray600))),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtServices();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 1,
                                                              bottom: 3),
                                                          child: Text(
                                                              "lbl_services"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtBodyGray600))),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtGallery();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: Text(
                                                              "lbl_gallery"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtBodyGray600))),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtPackage();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 2,
                                                              bottom: 1),
                                                          child: Text(
                                                              "lbl_package"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtBodyGray600))),
                                                  Padding(
                                                      padding: getPadding(
                                                          bottom: 1),
                                                      child: Text(
                                                          "lbl_review".tr,
                                                          overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtCallout))
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 2, top: 19, right: 11),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl_our_reviews".tr,
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: AppStyle
                                                          .txtSFProTextBold20),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtViewall();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 1,
                                                              bottom: 2),
                                                          child: Text(
                                                              "lbl_view_all2"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtBodyPink800)))
                                                ])),
                                        Container(
                                            width: double.maxFinite,
                                            child: Container(
                                                width: getHorizontalSize(396),
                                                margin: getMargin(
                                                    left: 4, top: 20),
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 13,
                                                    right: 16,
                                                    bottom: 13),
                                                decoration:
                                                    AppDecoration.fillGray50,
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 2),
                                                          child: Row(
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgEllipse30,
                                                                    height:
                                                                        getSize(
                                                                            56),
                                                                    width:
                                                                        getSize(
                                                                            56),
                                                                    radius: BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(28))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            17,
                                                                        bottom:
                                                                            3),
                                                                    child: Column(
                                                                        crossAxisAlignment: CrossAxisAlignment
                                                                            .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Text("msg_brooklyn_simmons".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtHeadline),
                                                                          Padding(
                                                                              padding: getPadding(top: 6),
                                                                              child: Row(children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgIcstar, height: getSize(24), width: getSize(24)),
                                                                                CustomImageView(svgPath: ImageConstant.imgIcstar, height: getSize(24), width: getSize(24), margin: getMargin(left: 5)),
                                                                                CustomImageView(svgPath: ImageConstant.imgIcstar, height: getSize(24), width: getSize(24), margin: getMargin(left: 5)),
                                                                                CustomImageView(svgPath: ImageConstant.imgIcstar, height: getSize(24), width: getSize(24), margin: getMargin(left: 5)),
                                                                                CustomImageView(svgPath: ImageConstant.imgIcstar, height: getSize(24), width: getSize(24), margin: getMargin(left: 5))
                                                                              ]))
                                                                        ]))
                                                              ])),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  332),
                                                          margin: getMargin(
                                                              top: 16,
                                                              right: 31),
                                                          child: Text(
                                                              "msg_it_is_a_long_established"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtBody))
                                                    ])))
                                      ]))),
                          Padding(
                              padding:
                                  getPadding(left: 12, top: 125, right: 12),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("lbl_our_specialist".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProTextBold20),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtViewallone();
                                        },
                                        child: Padding(
                                            padding: getPadding(bottom: 3),
                                            child: Text("lbl_view_all2".tr,
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtBodyPink800)))
                                  ])),
                          Container(
                              margin: getMargin(left: 12, top: 14, right: 20),
                              padding: getPadding(
                                  left: 16, top: 6, right: 16, bottom: 6),
                              decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse22,
                                        height: getSize(58),
                                        width: getSize(58),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(29)),
                                        margin: getMargin(top: 10)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 16, bottom: 5),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_esther_howard".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSubheadline),
                                              Padding(
                                                  padding: getPadding(top: 7),
                                                  child: Text(
                                                      "lbl_sr_barber".tr,
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style:
                                                          AppStyle.txtBody))
                                            ])),
                                    Spacer(),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgIcradiobutton,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(
                                            top: 22, right: 9, bottom: 22))
                                  ])),
                          Padding(
                              padding:
                                  getPadding(left: 12, top: 19, right: 12),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("lbl_nearest_salon".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProTextBold20),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtViewalltwo();
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(top: 1, bottom: 2),
                                            child: Text("lbl_view_all2".tr,
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtBodyPink800)))
                                  ])),
                          Padding(
                              padding:
                                  getPadding(left: 16, top: 24, right: 16),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Container(
                                            margin: getMargin(right: 9),
                                            padding: getPadding(
                                                left: 7,
                                                top: 8,
                                                right: 7,
                                                bottom: 8),
                                            decoration: AppDecoration
                                                .fillGray50
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder16),
                                            child: Column(
                                                mainAxisSize:
                                                    MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle34112x172,
                                                      height: getVerticalSize(
                                                          112),
                                                      width:
                                                          getHorizontalSize(
                                                              172),
                                                      radius: BorderRadius
                                                          .circular(
                                                              getHorizontalSize(
                                                                  8)),
                                                      margin:
                                                          getMargin(left: 1)),
                                                  Text(
                                                      "lbl_serenity_salon".tr,
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style:
                                                          AppStyle.txtBody),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 3, bottom: 11),
                                                      child: Text(
                                                          "lbl_ln_singapore"
                                                              .tr,
                                                          overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtFootnote))
                                                ]))),
                                    Expanded(
                                        child: Container(
                                            margin: getMargin(left: 9),
                                            padding: getPadding(
                                                left: 7,
                                                top: 8,
                                                right: 7,
                                                bottom: 8),
                                            decoration: AppDecoration
                                                .fillGray50
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder16),
                                            child: Column(
                                                mainAxisSize:
                                                    MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle348,
                                                      height: getVerticalSize(
                                                          112),
                                                      width:
                                                          getHorizontalSize(
                                                              172),
                                                      radius: BorderRadius
                                                          .circular(
                                                              getHorizontalSize(
                                                                  8)),
                                                      margin:
                                                          getMargin(left: 1)),
                                                  Text(
                                                      "lbl_serenity_salon".tr,
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style:
                                                          AppStyle.txtBody),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 3, bottom: 11),
                                                      child: Text(
                                                          "lbl_ln_singapore"
                                                              .tr,
                                                          overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtFootnote))
                                                ])))
                                  ])),
                          CustomButton(
                              height: getVerticalSize(53),
                              text: "lbl_book_now".tr,
                              margin: getMargin(left: 16, top: 30, right: 16),
                              onTap: () {
                                onTapBooknow();
                              })
                        ])))
                  ])),
        ),
        bottomNavigationBar:
            CustomBottomBar(onChanged: (BottomBarEnum type) {}));
  }

  onTapArrowleft11() {
    Get.back();
  }

  onTapBookmark5() {
    Get.toNamed(
      AppRoutes.myBookmarkScreen,
    );
  }

  onTapTxtDescription() {
    Get.toNamed(
      AppRoutes.serviceDetailThreeScreen,
    );
  }

  onTapTxtServices() {
    Get.toNamed(
      AppRoutes.serviceDetailOneScreen,
    );
  }

  onTapTxtGallery() {
    Get.toNamed(
      AppRoutes.serviceDetailTwoContainer1Screen,
    );
  }

  onTapTxtPackage() {
    Get.toNamed(
      AppRoutes.serviceDetailScreen,
    );
  }

  onTapTxtViewall() {
    Get.toNamed(
      AppRoutes.reviewsScreen,
    );
  }

  onTapTxtViewallone() {
    Get.toNamed(
      AppRoutes.selectSpecialistScreen,
    );
  }

  onTapTxtViewalltwo() {
    Get.toNamed(
      AppRoutes.nearbyLocationScreen,
    );
  }

  onTapBooknow() {
    Get.toNamed(
      AppRoutes.bookAppoimentScreen,
    );
  }
}
