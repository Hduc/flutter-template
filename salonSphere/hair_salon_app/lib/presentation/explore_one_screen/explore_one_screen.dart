import 'controller/explore_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_bottom_bar.dart';
import 'package:hair_salon_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ExploreOneScreen extends GetWidget<ExploreOneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
        width: size.width,
        height: size.height,
        padding: getPadding(
          bottom: 75,
        ),
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup3490,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: getPadding(
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  child: Container(
                    padding: getPadding(
                      all: 16,
                    ),
                    decoration: AppDecoration.white.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL16,
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
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 22,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: getVerticalSize(
                          62,
                        ),
                        width: getHorizontalSize(
                          34,
                        ),
                        margin: getMargin(
                          top: 61,
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
                                      imagePath: ImageConstant.imgVector24x23,
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
                      Container(
                        height: getVerticalSize(
                          62,
                        ),
                        width: getHorizontalSize(
                          34,
                        ),
                        margin: getMargin(
                          left: 87,
                          bottom: 61,
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
                                      imagePath: ImageConstant.imgVector24x23,
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
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: getMargin(
                      top: 57,
                    ),
                    padding: getPadding(
                      all: 8,
                    ),
                    decoration: AppDecoration.fillPink8006c.copyWith(
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
                            color: ColorConstant.pink800,
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
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      left: 144,
                      top: 56,
                      right: 31,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgShare,
                          height: getVerticalSize(
                            47,
                          ),
                          width: getHorizontalSize(
                            45,
                          ),
                          margin: getMargin(
                            bottom: 22,
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            62,
                          ),
                          width: getHorizontalSize(
                            34,
                          ),
                          margin: getMargin(
                            top: 7,
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
                                        imagePath:
                                            ImageConstant.imgVector24x23,
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
    );
  }
}
