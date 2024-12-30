import 'controller/search_here_twelve_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';
import 'package:hair_salon_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SearchHereTwelveScreen extends GetWidget<SearchHereTwelveController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
        width: double.maxFinite,
        child: Padding(
          padding:  EdgeInsets.only(top: 28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: Container(
                  padding: getPadding(
                    top: 20,
                    bottom: 20,
                  ),
                  decoration: AppDecoration.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomAppBar(
                        height: getVerticalSize(
                          46,
                        ),
                        title: Container(
                          margin: getMargin(
                            left: 16,
                          ),
                          padding: getPadding(
                            left: 20,
                            top: 10,
                            right: 20,
                            bottom: 10,
                          ),
                          decoration: AppDecoration.fillGray50.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppbarImage(
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                                svgPath: ImageConstant.imgContrast,
                                margin: getMargin(
                                  bottom: 2,
                                ),
                              ),
                              AppbarSubtitle3(
                                text: "lbl_search_here".tr,
                                margin: getMargin(
                                  left: 13,
                                  bottom: 5,
                                ),
                              ),
                              AppbarImage(
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                                svgPath:
                                    ImageConstant.imgArrowrightBlack90024x24,
                                margin: getMargin(
                                  left: 145,
                                  top: 1,
                                  bottom: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          AppbarSubtitle2(
                            text: "lbl_cancel".tr,
                            margin: getMargin(
                              left: 6,
                              top: 12,
                              right: 16,
                              bottom: 13,
                            ),
                          ),
                        ],
                        styleType: Style.bgFillGray50,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: getPadding(
                  left: 16,
                  top: 15,
                  right: 16,
                  bottom: 15,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_recent".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtHeadline,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_clear_all".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSubheadline,
                          ),
                        ),
                      ],
                    ),
                    CustomTextFormField(
                      focusNode: FocusNode(),
                      autofocus: true,
                      controller: controller.makeuptextController,
                      hintText: "lbl_make_up2".tr,
                      margin: getMargin(
                        top: 22,
                      ),
                      variant: TextFormFieldVariant.UnderLineGray300,
                      padding: TextFormFieldPadding.PaddingT1,
                      suffix: Container(
                        margin: getMargin(
                          left: 30,
                          bottom: 10,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgClose,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(
                          30,
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      focusNode: FocusNode(),
                      autofocus: true,
                      controller: controller.waxingtextController,
                      hintText: "lbl_waxing".tr,
                      margin: getMargin(
                        top: 22,
                      ),
                      variant: TextFormFieldVariant.UnderLineGray300,
                      padding: TextFormFieldPadding.PaddingT1,
                      suffix: Container(
                        margin: getMargin(
                          left: 30,
                          bottom: 10,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgClose,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(
                          30,
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      focusNode: FocusNode(),
                      autofocus: true,
                      controller: controller.haircuttextController,
                      hintText: "lbl_hair_cut3".tr,
                      margin: getMargin(
                        top: 21,
                      ),
                      variant: TextFormFieldVariant.UnderLineGray300,
                      suffix: Container(
                        margin: getMargin(
                          left: 30,
                          top: 1,
                          bottom: 10,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgClose,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(
                          30,
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      focusNode: FocusNode(),
                      autofocus: true,
                      controller: controller.shavingtextController,
                      hintText: "lbl_shaving".tr,
                      margin: getMargin(
                        top: 22,
                      ),
                      variant: TextFormFieldVariant.UnderLineGray300,
                      padding: TextFormFieldPadding.PaddingT1,
                      suffix: Container(
                        margin: getMargin(
                          left: 30,
                          bottom: 10,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgClose,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(
                          30,
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      focusNode: FocusNode(),
                      autofocus: true,
                      controller: controller.hairwashtextController,
                      hintText: "lbl_hair_wash2".tr,
                      margin: getMargin(
                        top: 21,
                        bottom: 5,
                      ),
                      variant: TextFormFieldVariant.UnderLineGray300,
                      fontStyle: TextFormFieldFontStyle.SFProTextRegular18,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                        margin: getMargin(
                          left: 30,
                          top: 1,
                          bottom: 10,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgClose,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(
                          30,
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
    );
  }
}
