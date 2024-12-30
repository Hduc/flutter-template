import 'controller/register_photo_id_card_saved_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:investment_app/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:investment_app/widgets/app_bar/custom_app_bar.dart';
import 'package:investment_app/widgets/custom_button.dart';

class RegisterPhotoIdCardSavedScreen
    extends GetWidget<RegisterPhotoIdCardSavedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.lightBlue900,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 74,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleftWhiteA70050x50,
                    margin: getMargin(left: 24, top: 3, bottom: 3),
                    onTap: onTapArrowleft12),
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
                                    value: 0.5,
                                    strokeWidth: getHorizontalSize(2.00)))),
                        AppbarSubtitle2(
                            text: "11/13",
                            margin: getMargin(
                                left: 0, top: 17, right: 0, bottom: 17))
                      ]))
                ]),
            body: Container(
                width: size.width,
                padding: getPadding(left: 24, top: 41, right: 24, bottom: 41),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(327.00),
                          margin: getMargin(top: 7),
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
                      Spacer(),
                      CustomButton(
                          height: 56,
                          width: 327,
                          text: "lbl_change".tr,
                          variant: ButtonVariant.FillWhiteA7000f,
                          shape: ButtonShape.RoundedBorder24,
                          fontStyle: ButtonFontStyle.InterMedium16Blue700)
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 24, right: 24, bottom: 40),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomButton(height: 56, width: 327, text: "lbl_continue".tr)
                ]))));
  }

  onTapArrowleft12() {
    Get.back();
  }
}
