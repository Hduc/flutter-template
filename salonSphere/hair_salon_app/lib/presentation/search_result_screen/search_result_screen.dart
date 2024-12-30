// ignore_for_file: invalid_use_of_protected_member

import '../search_result_screen/widgets/searchresult_item_widget.dart';
import 'controller/search_result_controller.dart';
import 'models/searchresult_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';

class SearchResultScreen extends GetWidget<SearchResultController> {
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
                        width: double.maxFinite,
                        child: Container(
                            margin: getMargin(left: 1),
                            padding: getPadding(top: 20, bottom: 20),
                            decoration: AppDecoration.white,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomAppBar(
                                      height: getVerticalSize(46),
                                      title: Container(
                                          margin: getMargin(left: 17),
                                          padding: getPadding(
                                              left: 20,
                                              top: 10,
                                              right: 20,
                                              bottom: 10),
                                          decoration: AppDecoration.fillGray50
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder16),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AppbarImage(
                                                    height: getSize(24),
                                                    width: getSize(24),
                                                    svgPath: ImageConstant
                                                        .imgContrast,
                                                    margin:
                                                        getMargin(bottom: 2)),
                                                AppbarSubtitle3(
                                                    text:
                                                        "lbl_search_here".tr,
                                                    margin: getMargin(
                                                        left: 13, bottom: 5)),
                                                AppbarImage(
                                                    height: getSize(24),
                                                    width: getSize(24),
                                                    svgPath: ImageConstant
                                                        .imgArrowrightBlack90024x24,
                                                    margin: getMargin(
                                                        left: 145,
                                                        top: 1,
                                                        bottom: 1))
                                              ])),
                                      actions: [
                                        AppbarSubtitle2(
                                            text: "lbl_cancel".tr,
                                            margin: getMargin(
                                                left: 6,
                                                top: 12,
                                                right: 15,
                                                bottom: 13))
                                      ],
                                      styleType: Style.bgFillGray50)
                                ]))),
                    Container(
                        padding: getPadding(left: 16, right: 16),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(top: 15),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_result".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .fromHex("#000000"),
                                                      fontSize:
                                                          getFontSize(18),
                                                      fontFamily:
                                                          'SF Pro Text',
                                                      fontWeight:
                                                          FontWeight.w600)),
                                              TextSpan(
                                                  text: "lbl_salon2".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .fromHex("#a81650"),
                                                      fontSize:
                                                          getFontSize(18),
                                                      fontFamily:
                                                          'SF Pro Text',
                                                      fontWeight:
                                                          FontWeight.w600))
                                            ]),
                                            textAlign: TextAlign.left),
                                        Padding(
                                            padding:
                                                getPadding(top: 4, bottom: 1),
                                            child: Text(
                                                "lbl_12_500_result".tr,
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtFootnotePink800))
                                      ])),
                              Expanded(
                                  child: Padding(
                                      padding: getPadding(top: 23),
                                      child: Obx(() => GridView.builder(
                                          shrinkWrap: true,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                  mainAxisExtent:
                                                      getVerticalSize(182),
                                                  crossAxisCount: 2,
                                                  mainAxisSpacing:
                                                      getHorizontalSize(18),
                                                  crossAxisSpacing:
                                                      getHorizontalSize(18)),
                                          physics: BouncingScrollPhysics(),
                                          itemCount: controller
                                              .searchResultModelObj
                                              .value
                                              .searchresultItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            SearchresultItemModel model =
                                                controller
                                                    .searchResultModelObj
                                                    .value
                                                    .searchresultItemList
                                                    .value[index];
                                            return SearchresultItemWidget(
                                                model,
                                                onTapColumnrectangle: () {
                                              onTapColumnrectangle();
                                            });
                                          }))))
                            ]))
                  ])),
        ));
  }

  onTapColumnrectangle() {
    Get.toNamed(AppRoutes.serviceDetailThreeScreen);
  }
}
