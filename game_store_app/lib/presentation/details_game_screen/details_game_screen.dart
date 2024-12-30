import 'package:expandable_text/expandable_text.dart';

import '../details_game_screen/widgets/details_game_item_widget.dart';
import 'controller/details_game_controller.dart';
import 'models/details_game_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/custom_button.dart';
import 'package:game_store_app/widgets/custom_icon_button.dart';

class DetailsGameScreen extends GetWidget<DetailsGameController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return true;
      },
      child: Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          body: Stack(
            children: [
              Container(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: SingleChildScrollView(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                              Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageConstant.imgRectangle294),
                                          fit: BoxFit.fill)),
                                  height: getVerticalSize(267),
                                  width: double.maxFinite,
                                  child: Container(
                                    decoration: AppDecoration
                                        .gradientBlack9008eBlack90000,
                                    child: SafeArea(
                                      child: Padding(
                                        padding: getPadding(top: 13, left: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                                height: 32,
                                                width: 32,

                                                variant: IconButtonVariant
                                                    .FillBlack90066,
                                                shape: IconButtonShape
                                                    .CircleBorder16,
                                                onTap: () {
                                                  onTapBtnArrowleft();
                                                },
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowleftWhiteA700))
                                          ],
                                        ),
                                      ),
                                    ),
                                  )),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 16, right: 20),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 3),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      "msg_multi_player_adventure"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtAeonikRegular15Gray600),
                                                  Padding(
                                                      padding: getPadding(top: 5),
                                                      child: Text(
                                                          "lbl_pubg_mobile".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtAeonikBold21))
                                                ])),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgStar,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(bottom: 28)),
                                        Padding(
                                            padding: getPadding(
                                                left: 4, top: 2, bottom: 28),
                                            child: Text("lbl_4_4".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtBodyBlack900))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 13, right: 20),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            padding: getPadding(
                                                left: 5,
                                                top: 16,
                                                right: 5,
                                                bottom: 16),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(20)),
                                                color: ColorConstant.whiteA700,
                                                boxShadow: [
                                                  BoxShadow(
                                                      offset: Offset(0, 6),
                                                      blurRadius: 30,
                                                      color: ColorConstant
                                                          .black900
                                                          .withOpacity(0.07))
                                                ]),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgLocation,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding: getPadding(top: 9),
                                                      child: Text(
                                                          "lbl_1m_reviews".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtAeonikRegular15))
                                                ])),
                                        Container(
                                            margin: getMargin(left: 16),
                                            padding: getPadding(
                                                left: 31,
                                                top: 16,
                                                right: 31,
                                                bottom: 16),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(20)),
                                                color: ColorConstant.whiteA700,
                                                boxShadow: [
                                                  BoxShadow(
                                                      offset: Offset(0, 6),
                                                      blurRadius: 30,
                                                      color: ColorConstant
                                                          .black900
                                                          .withOpacity(0.07))
                                                ]),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgDownload,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding: getPadding(top: 9),
                                                      child: Text("lbl_132".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtAeonikRegular15))
                                                ])),
                                        Container(
                                            margin: getMargin(left: 16),
                                            padding: getPadding(
                                                left: 17,
                                                top: 14,
                                                right: 17,
                                                bottom: 14),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(20)),
                                                color: ColorConstant.whiteA700,
                                                boxShadow: [
                                                  BoxShadow(
                                                      offset: Offset(0, 6),
                                                      blurRadius: 30,
                                                      color: ColorConstant
                                                          .black900
                                                          .withOpacity(0.07))
                                                ]),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgIcuser,
                                                      height: getSize(20),
                                                      width: getSize(20),
                                                      margin: getMargin(top: 1)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 11),
                                                      child: Text("lbl_mojang".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtAeonikRegular15))
                                                ])),
                                        Container(
                                            margin: getMargin(left: 16),
                                            padding: getPadding(
                                                left: 27,
                                                top: 16,
                                                right: 27,
                                                bottom: 16),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(20)),
                                                color: ColorConstant.whiteA700,
                                                boxShadow: [
                                                  BoxShadow(
                                                      offset: Offset(0, 6),
                                                      blurRadius: 30,
                                                      color: ColorConstant
                                                          .black900
                                                          .withOpacity(0.07))
                                                ]),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgDownloadGray600,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding: getPadding(top: 9),
                                                      child: Text("lbl_5m".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtAeonikRegular15))
                                                ]))
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20, top: 25),
                                      child: Text("lbl_overview".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtAeonikBold19))),
                              Padding(
                                padding: getPadding(left: 20,right: 20,top: 17),
                                child: ExpandableText(
                                  "${"msg_lorem_ipsum_is_not2".tr}${"msg_lorem_ipsum_is_not2".tr}",
                                  expandText: 'see more',
                                  collapseText: 'see less',
                                  maxLines: 3,
                                  linkColor:ColorConstant.black900,
                                  linkStyle:  TextStyle(
                                      color: ColorConstant.black900,
                                      fontSize: getFontSize(15),
                                      fontFamily: 'Aeonik',
                                      fontWeight: FontWeight.w500),
                                  style:TextStyle(
                                      color: ColorConstant.gray600,
                                      fontSize: getFontSize(15),
                                      fontFamily: 'Aeonik',
                                      fontWeight: FontWeight.w400) ,
                                ),
                              ),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 23, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_reviews".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtAeonikBold19),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtViewall();
                                            },
                                            child: Padding(
                                                padding:
                                                    getPadding(top: 2, bottom: 2),
                                                child: Text("lbl_view_all".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtAeonikRegular15LightblueA700)))
                                      ])),
                              Container(
                                  height: getVerticalSize(460),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 0),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 20, right: 19),
                                                child: Obx(() =>
                                                    ListView.separated(
                                                        physics:
                                                            NeverScrollableScrollPhysics(),
                                                        shrinkWrap: true,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      21));
                                                        },
                                                        itemCount: controller
                                                            .detailsGameModelObj
                                                            .value
                                                            .detailsGameItemList
                                                            .value
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          DetailsGameItemModel
                                                              model = controller
                                                                  .detailsGameModelObj
                                                                  .value
                                                                  .detailsGameItemList
                                                                  .value[index];
                                                          return DetailsGameItemWidget(
                                                              model);
                                                        })))),
                                      ]))
                            ])))
                      ])),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: getMargin(bottom: 0),
                      padding:
                          getPadding(left: 20, top: 16, right: 20, bottom: 16),
                      decoration: AppDecoration.white,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomButton(
                                height: getVerticalSize(56),
                                text: "lbl_buy_now_64_00".tr,
                                margin: getMargin(bottom: 24),
                                onTap: () {
                                  onTapBuynow6400();
                                })
                          ])))
            ],
          )),
    );
  }

  onTapBtnArrowleft() {
    Get.back();
  }

  onTapTxtViewall() {
    Get.toNamed(
      AppRoutes.reviewOneScreen,
    );
  }

  onTapBuynow6400() {
    Get.toNamed(
      AppRoutes.paymentDetailsScreen,
    );
  }
}
