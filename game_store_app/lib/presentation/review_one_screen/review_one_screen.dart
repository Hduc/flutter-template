import '../review_one_screen/widgets/review_one_item_widget.dart';
import 'controller/review_one_controller.dart';
import 'models/review_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_button.dart';

class ReviewOneScreen extends GetWidget<ReviewOneController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return true;
      },
      child: Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          appBar: CustomAppBar(
              height: getVerticalSize(66),
              leadingWidth: 44,
              leading: AppbarImage(
                  height: getSize(24),
                  width: getSize(24),
                  svgPath: ImageConstant.imgArrowleftBlack900,
                  margin: getMargin(left: 20, top: 17, bottom: 25),
                  onTap: () {
                    onTapArrowleft5();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_reviews".tr),
              styleType: Style.bgFillWhiteA700),
          body: SafeArea(
            child: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 24),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("lbl_4_02".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtAeonikBold21),
                          Padding(
                              padding: getPadding(top: 7),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgStar,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgStar,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(left: 4)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgStar,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(left: 4)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgStar,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(left: 4)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgStarGray400,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(left: 4))
                                  ])),
                          Padding(
                              padding: getPadding(top: 9),
                              child: Text("msg_based_on_23_reviews".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBodyBlack900)),
                          Padding(
                              padding: getPadding(left: 20, top: 41, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("lbl_excelent".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBodyBlack900),
                                    Padding(
                                        padding: getPadding(top: 9, bottom: 7),
                                        child: Container(
                                            height: getVerticalSize(4),
                                            width: getHorizontalSize(253),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blue50,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(2))),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(2)),
                                                child: LinearProgressIndicator(
                                                    value: 0.49,
                                                    backgroundColor:
                                                        ColorConstant.blue50,
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                                Color>(
                                                            ColorConstant
                                                                .lightBlueA700)))))
                                  ])),
                          Padding(
                              padding: getPadding(left: 20, top: 16, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("lbl_good".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBodyBlack900),
                                    Padding(
                                        padding: getPadding(top: 9, bottom: 7),
                                        child: Container(
                                            height: getVerticalSize(4),
                                            width: getHorizontalSize(253),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blue50,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(2))),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(2)),
                                                child: LinearProgressIndicator(
                                                    value: 0.34,
                                                    backgroundColor:
                                                        ColorConstant.blue50,
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                                Color>(
                                                            ColorConstant
                                                                .lightBlueA700)))))
                                  ])),
                          Padding(
                              padding: getPadding(left: 20, top: 18, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("lbl_avrange".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBodyBlack900),
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 8),
                                        child: Container(
                                            height: getVerticalSize(4),
                                            width: getHorizontalSize(253),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blue50,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(2))),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(2)),
                                                child: LinearProgressIndicator(
                                                    value: 0.58,
                                                    backgroundColor:
                                                        ColorConstant.blue50,
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                                Color>(
                                                            ColorConstant
                                                                .lightBlueA700)))))
                                  ])),
                          Padding(
                              padding: getPadding(left: 20, top: 17, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("lbl_below_avrange".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBodyBlack900),
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 8),
                                        child: Container(
                                            height: getVerticalSize(4),
                                            width: getHorizontalSize(253),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blue50,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(2))),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(2)),
                                                child: LinearProgressIndicator(
                                                    value: 0.83,
                                                    backgroundColor:
                                                        ColorConstant.blue50,
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                                Color>(
                                                            ColorConstant
                                                                .lightBlueA700)))))
                                  ])),
                          Padding(
                              padding: getPadding(left: 20, top: 15, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("lbl_poor".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBodyBlack900),
                                    Padding(
                                        padding: getPadding(top: 10, bottom: 6),
                                        child: Container(
                                            height: getVerticalSize(4),
                                            width: getHorizontalSize(253),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blue50,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(2))),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(2)),
                                                child: LinearProgressIndicator(
                                                    value: 0.28,
                                                    backgroundColor:
                                                        ColorConstant.blue50,
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                                Color>(
                                                            ColorConstant
                                                                .lightBlueA700)))))
                                  ])),
                          Container(
                              height: getVerticalSize(461),
                              width: double.maxFinite,
                              margin: getMargin(top: 31),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 20, right: 19),
                                            child: Obx(() => ListView.separated(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(21));
                                                },
                                                itemCount: controller
                                                    .reviewOneModelObj
                                                    .value
                                                    .reviewOneItemList
                                                    .value
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  ReviewOneItemModel model =
                                                      controller
                                                          .reviewOneModelObj
                                                          .value
                                                          .reviewOneItemList
                                                          .value[index];
                                                  return ReviewOneItemWidget(
                                                      model);
                                                })))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            margin: getMargin(bottom: 3),
                                            padding: getPadding(
                                                left: 20,
                                                top: 16,
                                                right: 20,
                                                bottom: 16),
                                            decoration: AppDecoration.white,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomButton(
                                                      height:
                                                          getVerticalSize(56),
                                                      text: "lbl_write_a_review"
                                                          .tr,
                                                      margin:
                                                          getMargin(bottom: 24),
                                                      onTap: () {
                                                        onTapWriteareview();
                                                      })
                                                ])))
                                  ]))
                        ]))),
          )),
    );
  }

  onTapWriteareview() {
    Get.toNamed(
      AppRoutes.writeReviewScreen,
    );
  }

  onTapArrowleft5() {
    Get.back();
  }
}
