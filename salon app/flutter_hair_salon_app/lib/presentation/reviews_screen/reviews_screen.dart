import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/reviews_screen/models/reviews_model.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';

import '../reviews_screen/widgets/reviews_item_widget.dart';
import 'controller/reviews_controller.dart';

class ReviewsScreen extends GetWidget<ReviewsController> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as bool;

    return WillPopScope(
      onWillPop: () async {
        if (!args) {
          Get.back();
        } else {
          Get.toNamed(AppRoutes.homePageScreen);
        }
        return true;
      },
      child: SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(81),
                  leadingWidth: 42,
                  leading: AppbarImage(
                      height: getVerticalSize(24),
                      width: getHorizontalSize(26),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16, top: 28, bottom: 28),
                      onTap: () {
                        // onTapArrowleft20();
                        if (!args) {
                          Get.back();
                        } else {
                          Get.toNamed(AppRoutes.homePageScreen);
                        }
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_categories".tr),
                  styleType: Style.bgFillWhiteA700),
              body: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  padding: getPadding(top: 12),
                  children: [
                    Text("lbl_4_9".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtSFProTextBold34),
                    Padding(
                        padding: getPadding(top: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgIcstar,
                                  height: getSize(24),
                                  width: getSize(24)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgIcstar,
                                  height: getSize(24),
                                  width: getSize(24),
                                  margin: getMargin(left: 16)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgIcstar,
                                  height: getSize(24),
                                  width: getSize(24),
                                  margin: getMargin(left: 16)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgIcstar,
                                  height: getSize(24),
                                  width: getSize(24),
                                  margin: getMargin(left: 16)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgStar,
                                  height: getSize(24),
                                  width: getSize(24),
                                  margin: getMargin(left: 16))
                            ])),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(top: 16),
                          child: Text("msg_based_on_23_reviews".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtBody)),
                    ),
                    Padding(
                        padding: getPadding(top: 27, right: 16, left: 16),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("lbl_excellent".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBody),
                              Expanded(
                                child: Padding(
                                  padding: getPadding(left: 57),
                                  child: LinearProgressIndicator(
                                      color: ColorConstant.gray300,
                                      minHeight: getVerticalSize(6),
                                      value: 0.92,
                                      backgroundColor: ColorConstant.gray300,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          ColorConstant.green60002)),
                                ),
                              ),
                            ])),
                    Padding(
                        padding: getPadding(top: 13, left: 16, right: 16),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("lbl_good".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBody),
                              Expanded(
                                child: Padding(
                                  padding: getPadding(left: 84),
                                  child: LinearProgressIndicator(
                                      color: ColorConstant.gray300,
                                      minHeight: getVerticalSize(6),
                                      value: 0.79,
                                      backgroundColor: ColorConstant.gray300,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          ColorConstant.lime600)),
                                ),
                              )
                            ])),
                    Padding(
                        padding: getPadding(top: 13, left: 16, right: 16),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("lbl_average".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBody),
                              Expanded(
                                child: Padding(
                                    padding: getPadding(left: 64),
                                    child: LinearProgressIndicator(
                                        color: ColorConstant.gray300,
                                        minHeight: getVerticalSize(6),
                                        value: 0.56,
                                        backgroundColor: ColorConstant.gray300,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                ColorConstant.yellow500))),
                              )
                            ])),
                    Padding(
                        padding: getPadding(top: 13, left: 16, right: 16),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("lbl_below_average".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBody),
                              Expanded(
                                child: Padding(
                                    padding: getPadding(left: 14),
                                    child: LinearProgressIndicator(
                                        color: ColorConstant.gray300,
                                        minHeight: getVerticalSize(6),
                                        value: 0.4,
                                        backgroundColor: ColorConstant.gray300,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                ColorConstant.yellow800))),
                              )
                            ])),
                    Padding(
                        padding: getPadding(top: 13, left: 16, right: 16),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("lbl_poor".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBody),
                              Expanded(
                                child: Padding(
                                    padding: getPadding(left: 90),
                                    child: LinearProgressIndicator(
                                        color: ColorConstant.gray300,
                                        minHeight: getVerticalSize(6),
                                        value: 0.2,
                                        backgroundColor: ColorConstant.gray300,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                ColorConstant.deepOrange700))),
                              )
                            ])),
                    Padding(
                        padding: getPadding(top: 24, left: 16, right: 16),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("lbl_reviews".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFProTextBold20),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtViewall();
                                  },
                                  child: Text("lbl_view_all2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtFootnotePink800))
                            ])),
                    Container(
                      height: getVerticalSize(32),
                      margin: getMargin(top: 22),
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: getVerticalSize(16),
                          );
                        },
                        padding: getPadding(left: 16),
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.starList.length,
                        itemBuilder: (context, index) {
                          String star = controller.starList[index];
                          return GestureDetector(
                            onTap: () {
                              controller.selectedIndex.value = index;
                            },
                            child: Obx(
                              () => Container(
                                  height: getVerticalSize(32),
                                  padding: getPadding(
                                      left: 17, top: 8, right: 17, bottom: 6),
                                  decoration: controller.selectedIndex.value ==
                                          index
                                      ? AppDecoration.fillPink800.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8)
                                      : AppDecoration.outlinePink800.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                          svgPath: controller
                                                      .selectedIndex.value ==
                                                  index
                                              ? ImageConstant.imgIcstarWhiteA700
                                              : ImageConstant.imgIcstarPink800,
                                          height: getSize(16),
                                          width: getSize(16),
                                        ),
                                        Padding(
                                            padding: getPadding(left: 4),
                                            child: Text(star,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: controller.selectedIndex
                                                            .value ==
                                                        index
                                                    ? AppStyle
                                                        .txtFootnoteWhiteA700
                                                    : AppStyle
                                                        .txtFootnotePink800))
                                      ])),
                            ),
                          );
                        },
                      ),
                    ),
                    GetBuilder<ReviewsController>(
                        init: ReviewsController(),
                        builder: (controller) => ListView.separated(
                            padding: getPadding(left: 16, top: 30, right: 16),
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(height: getVerticalSize(24));
                            },
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              ReviewsModel model = controller.reviewList[index];
                              return ReviewsItemWidget(model);
                            }))
                  ]))),
    );
  }

  onTapTxtViewall() {
    Get.toNamed(
      AppRoutes.reviewsOneScreen,
    );
  }

  onTapArrowleft20() {
    Get.back();
  }
}
