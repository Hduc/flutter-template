import 'controller/thanks_for_rating_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/custom_button.dart';

class ThanksForRatingScreen extends GetWidget<ThanksForRatingController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: getPadding(left: 20, right: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
             Container(
                 width: double.maxFinite,
                 child: Container(
                     margin: getMargin(bottom: 5),
                     padding: getPadding(
                         left: 0, top: 20, right: 0, bottom: 20),
                     decoration: AppDecoration.white.copyWith(
                         borderRadius:
                         BorderRadiusStyle.roundedBorder20),
                     child: Column(
                         mainAxisSize: MainAxisSize.min,
                         mainAxisAlignment:
                         MainAxisAlignment.center,
                         children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgStar11,
                              height: getSize(144),
                              width: getSize(144)),
                          Padding(
                              padding: getPadding(top: 8),
                              child: Text(
                                  "msg_thanks_for_review".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                  AppStyle.txtAeonikBold21)),
                          Container(
                              width: getHorizontalSize(320),
                              margin: getMargin(
                                  left: 9, top: 17, right: 9),
                              child: Text(
                                  "msg_we_work_super_hard".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style:
                                  AppStyle.txtBodyGray600)),
                          CustomButton(
                              height: getVerticalSize(48),
                              text: "lbl_ok".tr,
                              margin:
                              getMargin(top: 36, bottom: 4),
                              padding: ButtonPadding.PaddingAll13,
                              onTap: () {
                               onTapOk();
                              })
                         ])))
            ]));
  }

  onTapOk() {
    Get.back();
    Get.back();
  }
}
