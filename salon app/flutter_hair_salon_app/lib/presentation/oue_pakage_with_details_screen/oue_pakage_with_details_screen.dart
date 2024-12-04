import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';
import 'package:readmore/readmore.dart';

import 'controller/oue_pakage_with_details_controller.dart';

class OuePakageWithDetailsScreen
    extends GetWidget<OuePakageWithDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  height: getVerticalSize(209),
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle40209x428,
                        height: getVerticalSize(209),
                        width: getHorizontalSize(428),
                        alignment: Alignment.center),
                    CustomAppBar(
                        height: getVerticalSize(44),
                        leadingWidth: 52,
                        leading: AppbarIconbutton1(
                            svgPath: ImageConstant.imgArrowleftBlack900,
                            margin: getMargin(left: 16, top: 8),
                            onTap: () {
                              onTapArrowleft29();
                            }),
                        actions: [
                          AppbarIconbutton1(
                              onTap: () {
                                onTapBooknow150();
                              },
                              svgPath: ImageConstant.imgBookmark,
                              margin: getMargin(left: 16, right: 16, top: 8))
                        ])
                  ])),
              Expanded(
                  child: ListView(
                      padding: getPadding(left: 16, right: 16, top: 16),
                      primary: true,
                      shrinkWrap: false,
                      children: [
                    Text("msg_haircut_hairstyle".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSFProTextBold20),
                    Padding(
                        padding: getPadding(top: 15),
                        child: Text("msg_special_offers_pakage".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtFootnote)),
                    Container(
                        margin: getMargin(top: 15),
                        child: ReadMoreText("msg_it_is_a_long_established4".tr,
                            trimLines: 2,
                            colorClickableText: ColorConstant.pink800,
                            trimMode: TrimMode.Line,
                            style: AppStyle.txtFootnote,
                            trimCollapsedText: "lbl_read_more".tr,
                            moreStyle: TextStyle(
                                color: ColorConstant.pink800,
                                fontSize: getFontSize(13),
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400),
                            lessStyle: TextStyle(
                                color: ColorConstant.pink800,
                                fontSize: getFontSize(13),
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400))),
                    Padding(
                        padding: getPadding(top: 18),
                        child: Text("lbl_services".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFProTextBold20)),
                    Padding(
                        padding: getPadding(top: 16, right: 22),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        CustomImageView(
                                          svgPath:
                                              Constant.imagePath + "check.svg",
                                          height: getVerticalSize(24),
                                          width: getVerticalSize(24),
                                        ),
                                        Padding(
                                          padding: getPadding(left: 16),
                                          child: Text("lbl_haircut".tr,
                                              style: TextStyle(
                                                color: ColorConstant.black900,
                                                fontSize: getFontSize(
                                                  16,
                                                ),
                                                fontFamily: 'SF Pro Text',
                                                fontWeight: FontWeight.w400,
                                              )),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: getPadding(top: 24),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            svgPath: Constant.imagePath +
                                                "check.svg",
                                            height: getVerticalSize(24),
                                            width: getVerticalSize(24),
                                          ),
                                          Padding(
                                            padding: getPadding(left: 16),
                                            child: Text("lbl_hair_styling".tr,
                                                style: TextStyle(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'SF Pro Text',
                                                  fontWeight: FontWeight.w400,
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(top: 24),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            svgPath: Constant.imagePath +
                                                "check.svg",
                                            height: getVerticalSize(24),
                                            width: getVerticalSize(24),
                                          ),
                                          Padding(
                                            padding: getPadding(left: 16),
                                            child: Text("lbl_hair_coloring".tr,
                                                style: TextStyle(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'SF Pro Text',
                                                  fontWeight: FontWeight.w400,
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                  ]),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        CustomImageView(
                                          svgPath:
                                              Constant.imagePath + "check.svg",
                                          height: getVerticalSize(24),
                                          width: getVerticalSize(24),
                                        ),
                                        Padding(
                                          padding: getPadding(left: 16),
                                          child: Text("lbl_shave_mustache".tr,
                                              style: TextStyle(
                                                color: ColorConstant.black900,
                                                fontSize: getFontSize(
                                                  16,
                                                ),
                                                fontFamily: 'SF Pro Text',
                                                fontWeight: FontWeight.w400,
                                              )),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: getPadding(top: 24),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            svgPath: Constant.imagePath +
                                                "check.svg",
                                            height: getVerticalSize(24),
                                            width: getVerticalSize(24),
                                          ),
                                          Padding(
                                            padding: getPadding(left: 16),
                                            child: Text(
                                                "lbl_shave_the_beard".tr,
                                                style: TextStyle(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'SF Pro Text',
                                                  fontWeight: FontWeight.w400,
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(top: 24),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            svgPath: Constant.imagePath +
                                                "check.svg",
                                            height: getVerticalSize(24),
                                            width: getVerticalSize(24),
                                          ),
                                          Padding(
                                            padding: getPadding(left: 16),
                                            child: Text("lbl_facial".tr,
                                                style: TextStyle(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'SF Pro Text',
                                                  fontWeight: FontWeight.w400,
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                  ])
                            ])),
                    Padding(
                        padding: getPadding(top: 30),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("lbl_nearest_salon".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFProTextBold20),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.nearbyLocationScreen);
                                },
                                child: Text("lbl_view_all2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtBodyPink800),
                              )
                            ])),
                    Padding(
                        padding: getPadding(top: 24, bottom: 40),
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
                                          bottom: 21),
                                      decoration: AppDecoration.fillGray50
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder16),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle3410,
                                                height: getVerticalSize(112),
                                                width: double.infinity,
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(8))),
                                            Text("lbl_serenity_salon".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtBody),
                                            Padding(
                                                padding: getPadding(top: 5),
                                                child: Text(
                                                    "lbl_ln_singapore".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        AppStyle.txtFootnote))
                                          ]))),
                              Expanded(
                                  child: Container(
                                      margin: getMargin(left: 9),
                                      padding: getPadding(
                                          left: 7,
                                          top: 8,
                                          right: 7,
                                          bottom: 21),
                                      decoration: AppDecoration.fillGray50
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder16),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle3411,
                                                height: getVerticalSize(112),
                                                width: double.infinity,
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(8))),
                                            Text("lbl_serenity_salon".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtBody),
                                            Padding(
                                                padding: getPadding(top: 4),
                                                child: Text(
                                                    "lbl_ln_singapore".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        AppStyle.txtFootnote))
                                          ])))
                            ]))
                  ]))
            ]),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(53),
                text: "lbl_book_now_150".tr,
                margin: getMargin(left: 16, right: 16, bottom: 40),
                onTap: () {
                  Get.toNamed(AppRoutes.bookAppoimentOneScreen);
                })));
  }

  onTapArrowleft29() {
    Get.back();
  }

  onTapBooknow150() {
    Get.toNamed(
      AppRoutes.myBookmarkScreen,
    );
  }
}
