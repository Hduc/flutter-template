import 'controller/register_selfie_w_id_card_saved_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:investment_app/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:investment_app/widgets/app_bar/custom_app_bar.dart';
import 'package:investment_app/widgets/custom_button.dart';

class RegisterSelfieWIdCardSavedScreen
    extends GetWidget<RegisterSelfieWIdCardSavedController> {
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
                onTap: onTapArrowleft15),
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
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    getHorizontalSize(25.00)),
                                border: Border.all(
                                    color: ColorConstant.blue700,
                                    width: getHorizontalSize(2.00),
                                    // strokeAlign: StrokeAlign.center
                                )))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: getSize(50.00),
                            width: getSize(50.00),
                            child: CircularProgressIndicator(
                                color: ColorConstant.lightBlue900,
                                backgroundColor: ColorConstant.lightGray,
                                value: 13/13,
                                strokeWidth: getHorizontalSize(1.00)))),
                    AppbarSubtitle2(
                        text: "13/13",
                        margin: getMargin(
                            left: 0, top: 17, right: 0, bottom: 17))
                  ]))
            ]),
        body: SafeArea(child:SizedBox()),
        bottomNavigationBar: Padding(
            padding: getPadding(left: 24, right: 24, bottom: 40),
            child:
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomButton(
                onTap: () {
                  Get.back();
                },
                  height: 57,
                  width: 159,
                  text: "lbl_retake".tr,
                  variant: ButtonVariant.OutlineBlue700,
                  fontStyle: ButtonFontStyle.InterBold16),
              CustomButton(
                onTap: () => Get.toNamed(AppRoutes.registerTermAgreementScreen),
                  height: 57,
                  width: 159,
                  text: "lbl_continue".tr,
                  margin: getMargin(left: 8))
            ])));
  }

  onTapArrowleft15() {
    Get.back();
  }
}
