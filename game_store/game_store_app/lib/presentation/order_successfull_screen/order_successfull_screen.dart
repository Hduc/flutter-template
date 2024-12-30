import 'controller/order_successfull_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/custom_button.dart';

class OrderSuccessfullScreen extends GetWidget<OrderSuccessfullController> {
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
                     margin: getMargin(bottom: 24,top: 24),
                     padding: getPadding(all: 0),
                     decoration: AppDecoration.white.copyWith(
                         borderRadius:
                         BorderRadiusStyle.roundedBorder20),
                     child: Column(
                         mainAxisSize: MainAxisSize.min,
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgVector,
                              height: getSize(110),
                              width: getSize(110),
                              margin: getMargin(top: 11)),
                          Padding(
                              padding: getPadding(top: 27),
                              child: Text(
                                  "msg_order_successful".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                  AppStyle.txtAeonikBold21)),
                          Container(
                              width: getHorizontalSize(340),
                              margin: getMargin(
                                  left: 0, top: 17, right: 0),
                              child: Text(
                                  "msg_here_something_is".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style:
                                  AppStyle.txtBodyGray600)),
                          CustomButton(
                              height: getVerticalSize(48),
                              text: "lbl_ok".tr,
                              margin: getMargin(top: 44),
                              padding: ButtonPadding.PaddingAll13,
                              onTap: () {
                               onTapOk();
                              })
                         ])))
            ]));
  }

  onTapOk() {
   Get.offAllNamed(AppRoutes.homeScreenContainer1Screen);
  }
}
