import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/widgets/app_bar/appbar_image.dart';
import 'package:ai_app_flutter/widgets/app_bar/appbar_title.dart';
import 'package:ai_app_flutter/widgets/app_bar/custom_app_bar.dart';
import 'package:ai_app_flutter/widgets/custom_button.dart';
import 'package:ai_app_flutter/widgets/custom_floating_button.dart';
import 'package:ai_app_flutter/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'controller/chat_screen_stop_generating_controller.dart';

class ChatScreenStopGeneratingScreen
    extends GetWidget<ChatScreenStopGeneratingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(65),
                leadingWidth: 44,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 20, top: 21, bottom: 20),
                    onTap: () {
                      onTapArrowleft2();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "aiBotTalk".tr),
                styleType: Style.bgFillWhiteA700),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                          width: getHorizontalSize(145),
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: controller.chatController,
                          hintText: "lbl_hello_sir".tr,
                          margin: getMargin(top: 24, right: 20),
                          variant: TextFormFieldVariant.FillBlack900,
                          shape: TextFormFieldShape.CustomBorderTL20,
                          padding: TextFormFieldPadding.PaddingAll13,
                          fontStyle:
                              TextFormFieldFontStyle.AirbnbCerealWMd16WhiteA700,
                          alignment: Alignment.centerRight),
                      Container(
                          width: getHorizontalSize(234),
                          margin: getMargin(left: 20, top: 24),
                          padding: getPadding(
                              left: 16, top: 11, right: 16, bottom: 11),
                          decoration: AppDecoration.fillGray100a0.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("msg_hello_how_can_i".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBody.copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.16))))
                              ])),
                      Padding(
                          padding: getPadding(left: 28, top: 8),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgIccopy,
                                height: getSize(20),
                                width: getSize(20)),
                            CustomImageView(
                                svgPath: ImageConstant.imgIcshare,
                                height: getSize(20),
                                width: getSize(20),
                                margin: getMargin(left: 12))
                          ])),
                      CustomButton(
                          height: getVerticalSize(48),
                          width: getHorizontalSize(231),
                          text: "msg_i_hope_you_like".tr,
                          margin: getMargin(right: 20),
                          shape: ButtonShape.CustomBorderTL20,
                          padding: ButtonPadding.PaddingAll13,
                          fontStyle: ButtonFontStyle.AirbnbCerealWMd16,
                          alignment: Alignment.centerRight),
                      Container(
                          margin: getMargin(left: 20, top: 24, right: 101),
                          padding: getPadding(
                              left: 16, top: 10, right: 16, bottom: 10),
                          decoration: AppDecoration.fillGray100a0.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: getHorizontalSize(261),
                                    margin: getMargin(top: 3),
                                    child: Text("msg_rebound_to_ensue".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBody.copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.16))))
                              ])),
                      CustomButton(
                          height: getVerticalSize(40),
                          width: getHorizontalSize(184),
                          text: "msg_stop_generating".tr,
                          margin: getMargin(top: 40),
                          variant: ButtonVariant.FillGray50,
                          padding: ButtonPadding.PaddingT10,
                          fontStyle: ButtonFontStyle.AirbnbCerealWBd14,
                          prefixWidget: Container(
                              margin: getMargin(right: 8),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgIcStop)),
                          alignment: Alignment.center),
                      Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 21, bottom: 34),
                          padding: getPadding(
                              left: 20, top: 22, right: 20, bottom: 22),
                          decoration: AppDecoration.outlineGray1001,
                          child: Row(children: [
                            Expanded(
                                child: CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller:
                                        controller.groupthirtytwoController,
                                    hintText: "msg_ask_me_anything".tr,
                                    textInputAction: TextInputAction.done))
                          ]))
                    ])),
            floatingActionButton: CustomFloatingButton(
                height: 56,
                width: 56,
                child: CustomImageView(
                    svgPath: ImageConstant.imgIcsend,
                    height: getVerticalSize(28.0),
                    width: getHorizontalSize(28.0)))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
