import 'controller/rate_us_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/custom_button.dart';

class RateUsScreen extends GetWidget<RateUsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: getPadding(left: 0, right: 0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
             Container(
                 width: double.maxFinite,
                 child: Container(
                     margin: getMargin(bottom: 5),
                     padding: getPadding(all: 24),
                     decoration: AppDecoration.white.copyWith(
                         borderRadius:
                         BorderRadiusStyle.roundedBorder20),
                     child: Column(
                         mainAxisSize: MainAxisSize.min,
                         mainAxisAlignment:
                         MainAxisAlignment.center,
                         children: [
                          Padding(
                              padding: getPadding(top: 2),
                              child: Text(
                                  "msg_rate_us_experience".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                  AppStyle.txtAeonikBold21)),
                          Container(
                              width: getHorizontalSize(315),
                              margin: getMargin(
                                  left: 0, top: 15, right: 0),
                              child: Text(
                                  "msg_please_let_us_know".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style:
                                  AppStyle.txtBodyGray600)),
                          Padding(
                              padding: getPadding(top: 39),
                              child: RatingBar(
                                initialRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 33.33,
                                glow: false,
                                ratingWidget: RatingWidget(
                                  full: CustomImageView(svgPath: ImageConstant.fillstarIcon,),
                                  half: CustomImageView(svgPath: ImageConstant.fillstarIcon,),
                                  empty:CustomImageView(svgPath: ImageConstant.starIcon,),
                                ),
                                itemPadding:getPadding(left: 5.5,right: 5.5),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              )),
                          Padding(
                              padding: getPadding(top: 51),
                              child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                   Expanded(
                                       child: CustomButton(
                                         onTap: onTapCancel,
                                           height:
                                           getVerticalSize(
                                               48),
                                           text: "lbl_cancel".tr,
                                           margin: getMargin(
                                               right: 8),
                                           variant: ButtonVariant
                                               .BlueWhite,
                                           padding: ButtonPadding
                                               .PaddingAll13,
                                           fontStyle: ButtonFontStyle
                                               .AeonikBold18LightblueA700)),
                                   Expanded(
                                       child: CustomButton(
                                           height:
                                           getVerticalSize(
                                               48),
                                           text: "lbl_submit".tr,
                                           margin: getMargin(
                                               left: 8),
                                           padding: ButtonPadding
                                               .PaddingAll13,
                                           onTap: () {
                                            onTapSubmit();
                                           }))
                                  ]))
                         ])))
            ]));
  }

  onTapSubmit() {
    // Get.offAllNamed(AppRoutes.settingsScreen);
    Get.back();
  }
  onTapCancel(){
    Get.back();
  }
}
