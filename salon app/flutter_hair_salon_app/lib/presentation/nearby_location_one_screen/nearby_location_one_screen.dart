import 'controller/nearby_location_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

class NearbyLocationOneScreen extends GetWidget<NearbyLocationOneController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              getHorizontalSize(
                32,
              ),
            ),
            topRight: Radius.circular(
              getHorizontalSize(
                32,
              ),
            ),
          ),
          color: ColorConstant.whiteA700,
        ),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: getMarginOrPadding(top: 15),
                    height: getVerticalSize(5),
                    width: getVerticalSize(70),
                    decoration: AppDecoration.white.copyWith(
                        borderRadius:
                        BorderRadius.circular(getVerticalSize(100)),
                        color: ColorConstant.gray8004c),
                  )),
              Container(
                  margin: getMargin(top: 16),
                  child: Text("Filter",
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtSFProTextBold20)),
              SizedBox(
                height: getVerticalSize(16),
              ),
              Divider(
                height: 0,
                thickness: 1,
                color: ColorConstant.gray300,
              ),
              Padding(
                  padding: getPadding(top: 16, bottom: 30),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(left: 16, bottom: 16),
                          child: Text("lbl_category".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtHeadline),
                        ),
                        GetBuilder<NearbyLocationOneController>(
                          init: NearbyLocationOneController(),
                          builder: (controller) =>
                              Container(
                                height: getVerticalSize(32),
                                child: ListView.separated(
                                    padding: getPadding(left: 16, right: 16),
                                    primary: true,
                                    shrinkWrap: false,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      String category =
                                      controller.categoryList[index];
                                      return GestureDetector(
                                        onTap: () {
                                          controller.categoryIndex.value =
                                              index;
                                          controller.update();
                                        },
                                        child: Container(
                                            alignment: Alignment.center,
                                            height: getVerticalSize(32),
                                            width: getHorizontalSize(96),
                                            decoration: controller
                                                .categoryIndex.value ==
                                                index
                                                ? AppDecoration.txtFillPink800
                                                .copyWith(
                                                borderRadius:
                                                BorderRadiusStyle
                                                    .txtRoundedBorder8)
                                                : AppDecoration
                                                .txtOutlinePink800
                                                .copyWith(
                                                borderRadius:
                                                BorderRadiusStyle
                                                    .txtRoundedBorder8),
                                            child: Text(category,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: controller.categoryIndex
                                                    .value ==
                                                    index
                                                    ? AppStyle
                                                    .txtFootnoteWhiteA700
                                                    : AppStyle
                                                    .txtFootnotePink800)),
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                        width: getVerticalSize(10),
                                      );
                                    },
                                    itemCount: controller.categoryList.length),
                              ),
                        ),
                        Padding(
                          padding: getPadding(left: 16, bottom: 16, top: 30),
                          child: Text("lbl_rating".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtHeadline),
                        ),
                        GetBuilder<NearbyLocationOneController>(
                          init: NearbyLocationOneController(),
                          builder: (controller) =>
                              Container(
                                height: getVerticalSize(32),
                                child: ListView.separated(
                                    padding: getPadding(left: 16, right: 16),
                                    primary: true,
                                    shrinkWrap: false,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      String category =
                                      controller.ratingList[index];
                                      return GestureDetector(
                                        onTap: () {
                                          controller.ratingIndex.value =
                                              index;
                                          controller.update();
                                        },
                                        child: Container(
                                            alignment: Alignment.center,
                                            height: getVerticalSize(32),
                                            width: getHorizontalSize(96),
                                            decoration: controller
                                                .ratingIndex.value ==
                                                index
                                                ? AppDecoration.txtFillPink800
                                                .copyWith(
                                                borderRadius:
                                                BorderRadiusStyle
                                                    .txtRoundedBorder8)
                                                : AppDecoration
                                                .txtOutlinePink800
                                                .copyWith(
                                                borderRadius:
                                                BorderRadiusStyle
                                                    .txtRoundedBorder8),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .center,
                                              children: [
                                                CustomImageView(
                                                    svgPath:
                                                    ImageConstant.imgIcstar,
                                                    height: getSize(16),
                                                    width: getSize(16)),
                                                Padding(
                                                  padding: getPadding(left: 4),
                                                  child: Text(category,
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign: TextAlign
                                                          .center,
                                                      style: controller
                                                          .ratingIndex
                                                          .value ==
                                                          index
                                                          ? AppStyle
                                                          .txtFootnoteWhiteA700
                                                          : AppStyle
                                                          .txtFootnotePink800),
                                                ),
                                              ],
                                            )),
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                        width: getVerticalSize(10),
                                      );
                                    },
                                    itemCount: controller.ratingList.length),
                              ),
                        ),
                        Padding(
                          padding: getPadding(left: 16, bottom: 16, top: 30),
                          child: Text("lbl_distance".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtHeadline),
                        ),
                        GetBuilder<NearbyLocationOneController>(
                          init: NearbyLocationOneController(),
                          builder: (controller) =>
                              Container(
                                height: getVerticalSize(32),
                                child: ListView.separated(
                                    padding: getPadding(left: 16, right: 16),
                                    primary: true,
                                    shrinkWrap: false,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      String category =
                                      controller.distanceList[index];
                                      return GestureDetector(
                                        onTap: () {
                                          controller.distanceindex.value =
                                              index;
                                          controller.update();
                                        },
                                        child: Container(
                                            alignment: Alignment.center,
                                            height: getVerticalSize(32),
                                            width: getHorizontalSize(96),
                                            decoration: controller
                                                .distanceindex.value ==
                                                index
                                                ? AppDecoration.txtFillPink800
                                                .copyWith(
                                                borderRadius:
                                                BorderRadiusStyle
                                                    .txtRoundedBorder8)
                                                : AppDecoration
                                                .txtOutlinePink800
                                                .copyWith(
                                                borderRadius:
                                                BorderRadiusStyle
                                                    .txtRoundedBorder8),
                                            child: Text(category,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: controller.distanceindex
                                                    .value ==
                                                    index
                                                    ? AppStyle
                                                    .txtFootnoteWhiteA700
                                                    : AppStyle
                                                    .txtFootnotePink800)),
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                        width: getVerticalSize(10),
                                      );
                                    },
                                    itemCount: controller.distanceList.length),
                              ),
                        ),
                        GetBuilder<NearbyLocationOneController>(
                          init: NearbyLocationOneController(),
                          builder: (controller) =>
                              Padding(
                                  padding:
                                  getPadding(left: 16, top: 30, right: 16),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        Expanded(
                                            child: CustomButton(
                                                onTap: () {
                                                  controller.categoryIndex.value = 0;
                                                  controller.ratingIndex.value = 0;
                                                  controller.distanceindex.value = 0;
                                                  controller.update();
                                                },
                                                height: getVerticalSize(53),
                                                text: "lbl_reset".tr,
                                                margin: getMargin(right: 8),
                                                variant: ButtonVariant
                                                    .FillPink50,
                                                fontStyle: ButtonFontStyle
                                                    .SFProTextBold18Pink800)),
                                        Expanded(
                                            child: CustomButton(
                                                height: getVerticalSize(53),
                                                text: "lbl_apply".tr,
                                                margin: getMargin(left: 8),
                                                onTap: () {
                                                  onTapApply();
                                                }))
                                      ])),
                        )
                      ]))
            ]));
  }

  onTapApply() {
   Get.back();
  }
}
