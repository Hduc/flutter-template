import 'controller/empty_payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

class EmptyPaymentScreen extends GetWidget<EmptyPaymentController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(81),
            leadingWidth: 42,
            leading: AppbarImage(
                height: getVerticalSize(24),
                width: getHorizontalSize(26),
                svgPath: ImageConstant.imgArrowleft,
                margin: getMargin(left: 16, top: 28, bottom: 28),
                onTap: () {
                  onTapArrowleft35();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_payment_method".tr),
            styleType: Style.bgFillWhiteA700),
        body: SafeArea(
          child: Container(
              width: double.maxFinite,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                        svgPath: ImageConstant.imgGroup292,
                        height: getVerticalSize(107),
                        width: getHorizontalSize(300)),
                    Padding(
                        padding: getPadding(top: 31),
                        child: Text("lbl_no_payment".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFProTextBold22)),
                    Container(
                        width: getHorizontalSize(270),
                        margin: getMargin(top: 20),
                        child: Text("msg_pellentesque_eu".tr,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtBody)),
                    CustomButton(
                        height: getVerticalSize(53),
                        width: getHorizontalSize(235),
                        text: "lbl_add_new_card".tr,
                        margin: getMargin(top: 28, bottom: 5),
                        onTap: () {
                          onTapAddnewcard();
                        })
                  ])),
        ));
  }

  onTapAddnewcard() {
    Get.toNamed(
      AppRoutes.paymentScreen,
    );
  }

  onTapArrowleft35() {
    Get.back();
  }
}
