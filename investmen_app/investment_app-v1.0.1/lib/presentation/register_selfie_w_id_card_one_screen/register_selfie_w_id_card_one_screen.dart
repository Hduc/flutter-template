import 'controller/register_selfie_w_id_card_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:investment_app/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:investment_app/widgets/app_bar/custom_app_bar.dart';
import 'package:investment_app/widgets/custom_button.dart';

class RegisterSelfieWIdCardOneScreen
    extends GetWidget<RegisterSelfieWIdCardOneController> {
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
                onTap: onTapArrowleft14),
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
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    getHorizontalSize(25.00)),
                                border: Border.all(
                                    color: ColorConstant.lightBlue900,
                                    width: getHorizontalSize(2.00),
                                    // strokeAlign: StrokeAlign.center
                                )))),
                    AppbarSubtitle2(

                        text: "13/13",
                        margin: getMargin(
                            left: 0, top: 17, right: 0, bottom: 17))
                  ]))
            ]),
        body: SafeArea(
          child: Container(
              width: size.width,
              padding: getPadding(left: 27, right: 27),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("msg_finally_this_is".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular14
                            .copyWith(height: getVerticalSize(1.19))),
                    Container(
                        width: getHorizontalSize(248.00),
                        margin: getMargin(top: 8),
                        child: Text("msg_you_gotta_take_a".tr,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtInterBold32WhiteA700
                                .copyWith(height: getVerticalSize(1.1)))),
                    Container(
                        width: getHorizontalSize(319.00),
                        margin: getMargin(top: 17, bottom: 5),
                        child: Text("msg_make_sure_your_face".tr,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtInterRegular16Bluegray10001
                                .copyWith(height: getVerticalSize(1.5))))
                  ])),
        ),
        bottomNavigationBar: Padding(
            padding: getPadding(left: 24, right: 24, bottom: 40),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                      onTap: () => Get.toNamed(AppRoutes.registerSelfieWIdCardScreen),
                      height: 56, width: 327, text: "lbl_take_a_selfie".tr)
                ])));
  }

  onTapArrowleft14() {
    Get.back();
  }
}
