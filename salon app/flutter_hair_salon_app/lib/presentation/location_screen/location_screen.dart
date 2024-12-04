import 'controller/location_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_bottom_bar.dart';
import 'package:hair_salon_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LocationScreen extends GetWidget<LocationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: getVerticalSize(
                909,
              ),
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: getMargin(
                        left: 131,
                        top: 139,
                      ),
                      padding: getPadding(
                        all: 8,
                      ),
                      decoration: AppDecoration.fillGray6006c.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: getSize(
                              15,
                            ),
                            width: getSize(
                              15,
                            ),
                            margin: getMargin(
                              bottom: 1,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray600,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  7,
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
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup3630,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.maxFinite,
                            child: Container(
                              margin: getMargin(
                                left: 1,
                              ),
                              padding: getPadding(
                                left: 15,
                                top: 16,
                                right: 15,
                                bottom: 16,
                              ),
                              decoration: AppDecoration.white.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL16,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: controller.searchController,
                                    hintText: "lbl_search_here".tr,
                                    margin: getMargin(
                                      top: 8,
                                    ),
                                    padding: TextFormFieldPadding.PaddingT13,
                                    textInputAction: TextInputAction.done,
                                    prefix: Container(
                                      margin: getMargin(
                                        left: 20,
                                        top: 11,
                                        right: 13,
                                        bottom: 11,
                                      ),
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgContrast,
                                      ),
                                    ),
                                    prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(
                                        46,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              60,
                            ),
                            width: getHorizontalSize(
                              34,
                            ),
                            margin: getMargin(
                              left: 8,
                              top: 85,
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    margin: getMargin(
                                      right: 1,
                                    ),
                                    padding: getPadding(
                                      all: 8,
                                    ),
                                    decoration:
                                        AppDecoration.fillGray6006c.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder16,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: getSize(
                                            15,
                                          ),
                                          width: getSize(
                                            15,
                                          ),
                                          margin: getMargin(
                                            bottom: 1,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.gray600,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                7,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    height: getVerticalSize(
                                      49,
                                    ),
                                    width: getHorizontalSize(
                                      34,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgLocation,
                                          height: getVerticalSize(
                                            49,
                                          ),
                                          width: getHorizontalSize(
                                            34,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgVector1,
                                          height: getVerticalSize(
                                            24,
                                          ),
                                          width: getHorizontalSize(
                                            23,
                                          ),
                                          alignment: Alignment.topCenter,
                                          margin: getMargin(
                                            top: 5,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                top: 26,
                                right: 30,
                                bottom: 462,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: getVerticalSize(
                                      166,
                                    ),
                                    width: getHorizontalSize(
                                      128,
                                    ),
                                    margin: getMargin(
                                      bottom: 22,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgActivedot,
                                          height: getVerticalSize(
                                            101,
                                          ),
                                          width: getHorizontalSize(
                                            60,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgShare,
                                          height: getVerticalSize(
                                            47,
                                          ),
                                          width: getHorizontalSize(
                                            45,
                                          ),
                                          alignment: Alignment.bottomLeft,
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            margin: getMargin(
                                              left: 19,
                                              bottom: 132,
                                            ),
                                            padding: getPadding(
                                              all: 9,
                                            ),
                                            decoration: AppDecoration
                                                .outlineBlack9000c
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder3,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "lbl_arrival".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtGilroyBold12,
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 4,
                                                  ),
                                                  child: Text(
                                                    "lbl_2_mins".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroyBold12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      63,
                                    ),
                                    width: getHorizontalSize(
                                      34,
                                    ),
                                    margin: getMargin(
                                      left: 90,
                                      top: 125,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            margin: getMargin(
                                              left: 1,
                                            ),
                                            padding: getPadding(
                                              all: 8,
                                            ),
                                            decoration: AppDecoration
                                                .fillGray6006c
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder16,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: getSize(
                                                    15,
                                                  ),
                                                  width: getSize(
                                                    15,
                                                  ),
                                                  margin: getMargin(
                                                    bottom: 1,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.gray600,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        7,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            height: getVerticalSize(
                                              49,
                                            ),
                                            width: getHorizontalSize(
                                              34,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgLocation,
                                                  height: getVerticalSize(
                                                    49,
                                                  ),
                                                  width: getHorizontalSize(
                                                    34,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgVector1,
                                                  height: getVerticalSize(
                                                    24,
                                                  ),
                                                  width: getHorizontalSize(
                                                    23,
                                                  ),
                                                  alignment:
                                                      Alignment.topCenter,
                                                  margin: getMargin(
                                                    top: 5,
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
