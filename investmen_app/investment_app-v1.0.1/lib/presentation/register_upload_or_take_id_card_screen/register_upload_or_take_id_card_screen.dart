import 'controller/register_upload_or_take_id_card_controller.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:investment_app/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:investment_app/widgets/app_bar/custom_app_bar.dart';
import 'package:investment_app/widgets/custom_button.dart';

class RegisterUploadOrTakeIdCardScreen
    extends GetWidget<RegisterUploadOrTakeIdCardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(56.00),
            leadingWidth: 74,
            leading: AppbarIconbutton(
                svgPath: ImageConstant.imgArrowLeftIcon,
                margin: getMargin(left: 24, top: 3, bottom: 3),
                onTap: onTapArrowleft10),
            actions: [
              Container(
                  height: getSize(50.00),
                  width: getSize(50.00),
                  margin:
                      getMargin(left: 227, top: 3, right: 24, bottom: 3),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: getSize(50.00),
                            width: getSize(50.00),
                            child: CircularProgressIndicator(
                                color: ColorConstant.lightBlue900,
                                backgroundColor: ColorConstant.lightGray,
                                value: 11/13,
                                strokeWidth: getHorizontalSize(2.00)))),
                    AppbarSubtitle2(
                        text: "11/13",
                        margin: getMargin(
                            left: 0, top: 17, right: 0, bottom: 17))
                  ]))
            ]),
        body: SafeArea(
          child: Container(
              width: size.width,
              padding: getPadding(left: 23, top: 24, right: 23, bottom: 24),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: getHorizontalSize(327.00),
                              margin: getMargin(top: 24),
                              child: Text("msg_upload_a_photo_of".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtInterBold32WhiteA700
                                      .copyWith(height: getVerticalSize(1.5)))),
                          Container(
                              width: getHorizontalSize(327.00),
                              margin: getMargin(top: 50),
                              child: Text("msg_regulations_require2".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtInterRegular16Bluegray10001
                                      .copyWith(height: getVerticalSize(1.5)))),
                          Padding(
                              padding: getPadding(left: 1, top: 29, right: 1),
                              child: DottedBorder(
                                  color: ColorConstant.dartGray,
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(1.00),
                                      top: getVerticalSize(1.00),
                                      right: getHorizontalSize(1.00),
                                      bottom: getVerticalSize(1.00)),
                                  strokeWidth: getHorizontalSize(1.00),
                                  radius: Radius.circular(24),
                                  borderType: BorderType.RRect,
                                  dashPattern: [8, 8],
                                  child: Container(
                                      width: getHorizontalSize(327.00),
                                      padding: getPadding(
                                          left: 127,
                                          top: 56,
                                          right: 127,
                                          bottom: 56),
                                      decoration: AppDecoration.outlineWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder24),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgForward,
                                                color: ColorConstant.dartGray,
                                                height: getSize(24.00),
                                                width: getSize(24.00),
                                                margin: getMargin(right: 21)),
                                            Padding(
                                                padding:
                                                    getPadding(top: 13, bottom: 2),
                                                child: Text("lbl_select_file".tr,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular14
                                                        .copyWith(
                                                            height: getVerticalSize(
                                                                1.19))))
                                          ])))),
                          Padding(
                              padding: getPadding(top: 18, right: 1),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(138.00),
                                        margin: getMargin(top: 9, bottom: 9),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.whiteA70019)),
                                    Text("lbl_or".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular16Bluegray10001
                                            .copyWith(
                                                height: getVerticalSize(1.24))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(138.00),
                                        margin: getMargin(top: 9, bottom: 9),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.whiteA70019))
                                  ])),
                          CustomButton(
                            onTap: () => Get.toNamed(AppRoutes.registerPhotoIdCardScreen),
                              height: 72,
                              width: 327,
                              text: "msg_open_camera_take".tr,
                              margin: getMargin(top: 17),
                              variant: ButtonVariant.FillWhiteA7000f,
                              shape: ButtonShape.RoundedBorder24,
                              padding: ButtonPadding.PaddingT24,
                              fontStyle: ButtonFontStyle.InterMedium16,
                              prefixWidget: Container(
                                  margin: getMargin(right: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCamera,
                                  color: ColorConstant.dartGray,)))
                        ]),
                  ),
                ],
              )),
        ),
        bottomNavigationBar: Padding(
            padding: getPadding(left: 24, right: 24, bottom: 30),
            child:
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomButton(onTap:() => Get.toNamed(AppRoutes.registerAddressScreen),height: 56, width: 327, text: "lbl_continue".tr)
            ])));
  }

  onTapArrowleft10() {
    Get.back();
  }
}
