// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';

import '../../widgets/app_bar/appbar_subtitle_2.dart';
import '../../widgets/custom_text_form_field.dart';
import '../search_result_screen/controller/search_result_controller.dart';
import '../search_result_screen/models/searchresult_item_model.dart';
import '../search_result_screen/widgets/searchresult_item_widget.dart';

class SearchScreen extends GetWidget<SearchResultController> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Row(
                children: [
                  AppbarImage(
                      height: getVerticalSize(24),
                      width: getHorizontalSize(26),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16),
                      onTap: () {
                        Get.back();
                      }),
                  Expanded(
                    child: CustomTextFormField(
                      controller: searchController,
                      hintText: "lbl_search_here".tr,
                      padding: TextFormFieldPadding.PaddingT13,
                      textInputAction: TextInputAction.done,
                      margin: getMarginOrPadding(top: 20, bottom: 20, left: 16),
                      prefix: Container(
                          margin: getMargin(
                              left: 20, top: 11, right: 13, bottom: 11),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgContrast)),
                      prefixConstraints:
                          BoxConstraints(maxHeight: getVerticalSize(46)),
                      onTap: () {
                        controller.listNull.value = false;
                        // Get.toNamed(AppRoutes.searchScreen);
                      },
                      suffix: Container(
                          margin: getMargin(
                              left: 20, top: 11, right: 20, bottom: 11),
                          child: CustomImageView(
                              svgPath:
                                  ImageConstant.imgArrowrightBlack90024x24)),
                      suffixConstraints:
                          BoxConstraints(maxHeight: getVerticalSize(46)),
                    ),
                  ),
                  Obx(
                    () => !controller.listNull.value
                        ? AppbarSubtitle2(
                            onTap: () {
                              controller.listNull.value = true;
                            },
                            text: "lbl_cancel".tr,
                            margin: getMargin(
                              left: 6,
                              top: 13,
                              right: 16,
                              bottom: 14,
                            ),
                          )
                        : SizedBox(width: getVerticalSize(16)),
                  ),
                ],
              ),
              Obx(
                () => controller.listNull.value
                    ? Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgGroup293,
                                  height: getVerticalSize(153),
                                  width: getHorizontalSize(300)),
                              Padding(
                                  padding: getPadding(top: 30),
                                  child: Text("msg_result_not_found".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProTextBold22)),
                              Container(
                                  margin:
                                      getMargin(top: 12, right: 69, left: 69),
                                  child: Text("msg_pellentesque_eu".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtBody))
                            ]),
                      )
                    : Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding:
                                      getPadding(top: 16, left: 16, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_result".tr,
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.fromHex(
                                                              "#000000"),
                                                      fontSize: getFontSize(18),
                                                      fontFamily: 'SF Pro Text',
                                                      fontWeight:
                                                          FontWeight.w600)),
                                              TextSpan(
                                                  text: "lbl_salon2".tr,
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.fromHex(
                                                              "#a81650"),
                                                      fontSize: getFontSize(18),
                                                      fontFamily: 'SF Pro Text',
                                                      fontWeight:
                                                          FontWeight.w600))
                                            ]),
                                            textAlign: TextAlign.left),
                                        Text("lbl_12_500_result".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtFootnotePink800)
                                      ])),
                              Expanded(
                                  child: Padding(
                                      padding: getPadding(
                                          top: 24, right: 16, left: 16),
                                      child: Obx(() => GridView.builder(
                                          shrinkWrap: true,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                  mainAxisExtent:
                                                      getVerticalSize(173),
                                                  crossAxisCount: 2,
                                                  mainAxisSpacing:
                                                      getVerticalSize(24),
                                                  crossAxisSpacing:
                                                      getVerticalSize(15)),
                                          physics: BouncingScrollPhysics(),
                                          itemCount: controller
                                              .searchResultModelObj
                                              .value
                                              .searchresultItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            SearchresultItemModel model =
                                                controller
                                                        .searchResultModelObj
                                                        .value
                                                        .searchresultItemList[
                                                    index];
                                            return SearchresultItemWidget(model,
                                                onTapColumnrectangle: () {
                                              onTapColumnrectangle();
                                            });
                                          }))))
                            ]),
                      ),
              )
            ])));
  }

  onTapColumnrectangle() {
    Get.toNamed(AppRoutes.serviceDetailThreeScreen);
  }
}
