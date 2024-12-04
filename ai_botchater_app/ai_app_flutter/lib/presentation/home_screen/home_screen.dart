import 'controller/home_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/account_page/account_page.dart';
import 'package:ai_app_flutter/presentation/business_page/business_page.dart';
import 'package:ai_app_flutter/presentation/home_one_page/home_one_page.dart';
import 'package:ai_app_flutter/presentation/search_page/search_page.dart';
import 'package:ai_app_flutter/widgets/custom_bottom_bar.dart';
import 'package:ai_app_flutter/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      padding: getPadding(
                        left: 131,
                        top: 16,
                        right: 131,
                        bottom: 16,
                      ),
                      decoration: AppDecoration.fillWhiteA700,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_ai_assistants".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtAirbnbCerealWBd24,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      left: 20,
                      top: 8,
                    ),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              85,
                            ),
                            padding: getPadding(
                              left: 16,
                              top: 8,
                              right: 16,
                              bottom: 8,
                            ),
                            decoration: AppDecoration.outlineBlack900.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgList1,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                    top: 1,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "lbl_all".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtHeadlineWhiteA700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              119,
                            ),
                            margin: getMargin(
                              left: 16,
                            ),
                            padding: getPadding(
                              left: 13,
                              top: 7,
                              right: 13,
                              bottom: 7,
                            ),
                            decoration: AppDecoration.outlineGray400.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgWritinghandgesture,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                    top: 3,
                                  ),
                                  child: Text(
                                    "lbl_writing".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtBody.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              127,
                            ),
                            margin: getMargin(
                              left: 16,
                            ),
                            padding: getPadding(
                              left: 13,
                              top: 8,
                              right: 13,
                              bottom: 8,
                            ),
                            decoration: AppDecoration.outlineGray400.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgBusinessidea1,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                    top: 1,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "lbl_creative".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtBody.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              130,
                            ),
                            margin: getMargin(
                              left: 16,
                            ),
                            padding: getPadding(
                              left: 13,
                              top: 8,
                              right: 13,
                              bottom: 8,
                            ),
                            decoration: AppDecoration.outlineGray400.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgJobsecurity1,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 11,
                                  ),
                                  child: Text(
                                    "lbl_business".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtBody.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: getHorizontalSize(
                              130,
                            ),
                            padding: getPadding(
                              left: 13,
                              top: 8,
                              right: 13,
                              bottom: 8,
                            ),
                            decoration: AppDecoration.outlineGray400.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgPersonalinformation,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 11,
                                  ),
                                  child: Text(
                                    "lbl_personal".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtBody.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              111,
                            ),
                            margin: getMargin(
                              left: 16,
                            ),
                            padding: getPadding(
                              left: 14,
                              top: 8,
                              right: 14,
                              bottom: 8,
                            ),
                            decoration: AppDecoration.outlineGray400.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgMenu1,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 11,
                                  ),
                                  child: Text(
                                    "lbl_other".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtBody.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 34,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_writing2".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAirbnbCerealWXBd20,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 4,
                          ),
                          child: Text(
                            "lbl_view_all".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtAirbnbCerealWLt14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 16,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: getPadding(
                            all: 4,
                          ),
                          decoration: AppDecoration.fillGreen50.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEarth1,
                                height: getSize(
                                  86,
                                ),
                                width: getSize(
                                  86,
                                ),
                                margin: getMargin(
                                  top: 13,
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 16,
                                ),
                                padding: getPadding(
                                  left: 10,
                                  top: 11,
                                  right: 10,
                                  bottom: 11,
                                ),
                                decoration:
                                    AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                      ),
                                      child: Text(
                                        "msg_translate_language".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtHeadline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 16,
                          ),
                          padding: getPadding(
                            all: 4,
                          ),
                          decoration: AppDecoration.fillIndigo50.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgSearchproduct1,
                                height: getSize(
                                  86,
                                ),
                                width: getSize(
                                  86,
                                ),
                                margin: getMargin(
                                  top: 12,
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 17,
                                ),
                                padding: getPadding(
                                  all: 11,
                                ),
                                decoration:
                                    AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                      ),
                                      child: Text(
                                        "msg_plagiarism_checker".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtHeadline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 25,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_creative".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAirbnbCerealWBd22,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 5,
                            bottom: 4,
                          ),
                          child: Text(
                            "lbl_view_all".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtAirbnbCerealWLt14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 18,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: getPadding(
                            left: 4,
                            top: 6,
                            right: 4,
                            bottom: 6,
                          ),
                          decoration: AppDecoration.fillDeeporange50.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgMusiccd1,
                                height: getSize(
                                  86,
                                ),
                                width: getSize(
                                  86,
                                ),
                                margin: getMargin(
                                  top: 11,
                                ),
                              ),
                              CustomButton(
                                height: getVerticalSize(
                                  48,
                                ),
                                width: getHorizontalSize(
                                  171,
                                ),
                                text: "lbl_songs_lyrics".tr,
                                margin: getMargin(
                                  top: 14,
                                ),
                                variant: ButtonVariant.FillWhiteA700,
                                padding: ButtonPadding.PaddingAll13,
                                fontStyle: ButtonFontStyle.AirbnbCerealWBd16,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            171,
                          ),
                          width: getHorizontalSize(
                            179,
                          ),
                          margin: getMargin(
                            left: 16,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: getPadding(
                                    all: 4,
                                  ),
                                  decoration: AppDecoration.fillBlue50.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder16,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: getVerticalSize(
                                          48,
                                        ),
                                        width: getHorizontalSize(
                                          171,
                                        ),
                                        margin: getMargin(
                                          top: 115,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              16,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 47,
                                    right: 42,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgSuccessstory1,
                                        height: getSize(
                                          86,
                                        ),
                                        width: getSize(
                                          86,
                                        ),
                                        margin: getMargin(
                                          left: 3,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 31,
                                        ),
                                        child: Text(
                                          "lbl_storyteller".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtHeadline,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 25,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_business".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAirbnbCerealWBd22,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 6,
                            bottom: 3,
                          ),
                          child: Text(
                            "lbl_view_all".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtAirbnbCerealWLt14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 18,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: getPadding(
                            all: 4,
                          ),
                          decoration: AppDecoration.fillCyan50.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgShootingstar1,
                                height: getSize(
                                  86,
                                ),
                                width: getSize(
                                  86,
                                ),
                                margin: getMargin(
                                  top: 12,
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 17,
                                ),
                                padding: getPadding(
                                  left: 23,
                                  top: 13,
                                  right: 23,
                                  bottom: 13,
                                ),
                                decoration:
                                    AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_advertisements".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtHeadline,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 16,
                          ),
                          padding: getPadding(
                            all: 4,
                          ),
                          decoration: AppDecoration.fillGreen5001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgPaper1,
                                height: getSize(
                                  86,
                                ),
                                width: getSize(
                                  86,
                                ),
                                margin: getMargin(
                                  top: 7,
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 22,
                                ),
                                padding: getPadding(
                                  left: 17,
                                  top: 13,
                                  right: 17,
                                  bottom: 13,
                                ),
                                decoration:
                                    AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "msg_answer_interview".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtHeadline,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 27,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_developer".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAirbnbCerealWBd22,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 4,
                            bottom: 6,
                          ),
                          child: Text(
                            "lbl_view_all".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtAirbnbCerealWLt14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 16,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: getPadding(
                            all: 4,
                          ),
                          decoration: AppDecoration.fillCyan5001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgCodeissue1,
                                height: getSize(
                                  86,
                                ),
                                width: getSize(
                                  86,
                                ),
                                margin: getMargin(
                                  top: 13,
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 16,
                                ),
                                padding: getPadding(
                                  left: 42,
                                  top: 13,
                                  right: 42,
                                  bottom: 13,
                                ),
                                decoration:
                                    AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_write_code".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtHeadline,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 16,
                          ),
                          padding: getPadding(
                            all: 4,
                          ),
                          decoration: AppDecoration.fillDeeporange5001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgPuzzlealert1,
                                height: getSize(
                                  86,
                                ),
                                width: getSize(
                                  86,
                                ),
                                margin: getMargin(
                                  top: 13,
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 16,
                                ),
                                padding: getPadding(
                                  left: 36,
                                  top: 11,
                                  right: 36,
                                  bottom: 11,
                                ),
                                decoration:
                                    AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                      ),
                                      child: Text(
                                        "lbl_explain_code".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtHeadline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 25,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_personal".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAirbnbCerealWBd22,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 5,
                            bottom: 4,
                          ),
                          child: Text(
                            "lbl_view_all".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtAirbnbCerealWLt14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 18,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: getPadding(
                            all: 4,
                          ),
                          decoration: AppDecoration.fillIndigo5001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgBirthdaycake1,
                                height: getSize(
                                  86,
                                ),
                                width: getSize(
                                  86,
                                ),
                                margin: getMargin(
                                  top: 13,
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 16,
                                ),
                                padding: getPadding(
                                  left: 52,
                                  top: 11,
                                  right: 52,
                                  bottom: 11,
                                ),
                                decoration:
                                    AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                      ),
                                      child: Text(
                                        "lbl_birthday".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtHeadline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 16,
                          ),
                          padding: getPadding(
                            all: 4,
                          ),
                          decoration: AppDecoration.fillOrange50.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgGiftbox1,
                                height: getSize(
                                  86,
                                ),
                                width: getSize(
                                  86,
                                ),
                                margin: getMargin(
                                  top: 13,
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 16,
                                ),
                                padding: getPadding(
                                  left: 51,
                                  top: 11,
                                  right: 51,
                                  bottom: 11,
                                ),
                                decoration:
                                    AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                      ),
                                      child: Text(
                                        "lbl_apology".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtHeadline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 25,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_other".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAirbnbCerealWBd22,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 5,
                            bottom: 4,
                          ),
                          child: Text(
                            "lbl_view_all".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtAirbnbCerealWLt14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 18,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: getPadding(
                            left: 4,
                            top: 3,
                            right: 4,
                            bottom: 3,
                          ),
                          decoration: AppDecoration.fillDeeporange5002.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgFoodanddrink1,
                                height: getSize(
                                  86,
                                ),
                                width: getSize(
                                  86,
                                ),
                                margin: getMargin(
                                  top: 13,
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 18,
                                ),
                                padding: getPadding(
                                  left: 66,
                                  top: 13,
                                  right: 66,
                                  bottom: 13,
                                ),
                                decoration:
                                    AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_food".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtHeadline,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 16,
                          ),
                          padding: getPadding(
                            left: 4,
                            top: 3,
                            right: 4,
                            bottom: 3,
                          ),
                          decoration: AppDecoration.fillGreen5002.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgBlueberry1,
                                height: getSize(
                                  86,
                                ),
                                width: getSize(
                                  86,
                                ),
                                margin: getMargin(
                                  top: 13,
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  top: 18,
                                ),
                                padding: getPadding(
                                  left: 51,
                                  top: 11,
                                  right: 51,
                                  bottom: 11,
                                ),
                                decoration:
                                    AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                      ),
                                      child: Text(
                                        "lbl_diet_plan".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtHeadline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Chat:
        return AppRoutes.homeOnePage;
      case BottomBarEnum.Aiassistants:
        return AppRoutes.businessPage;
      case BottomBarEnum.History:
        return AppRoutes.searchPage;
      case BottomBarEnum.Account:
        return AppRoutes.accountPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeOnePage:
        return HomeOnePage();
      case AppRoutes.businessPage:
        return BusinessPage();
      case AppRoutes.searchPage:
        return SearchPage();
      case AppRoutes.accountPage:
        return AccountPage();
      default:
        return DefaultWidget();
    }
  }
}
