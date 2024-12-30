import 'controller/payment_success_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class PaymentSuccessDialog extends StatelessWidget {
  PaymentSuccessDialog(this.controller);

  PaymentSuccessController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: getHorizontalSize(396),
        padding: getPadding(top: 30, bottom: 30),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                  svgPath: ImageConstant.imgTickcircle,
                  height: getSize(130),
                  width: getSize(130)),
              Padding(
                  padding: getPadding(top: 16),
                  child: Text("msg_payment_successful".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextBold22)),
              Container(
                  margin: getMargin(left: 85, right: 85, top: 16),
                  child: Text("msg_your_booking_has".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtBody)),
              CustomButton(
                  height: getVerticalSize(57),
                  text: "lbl_view_e_reciept".tr,
                  margin: getMargin(top: 30, right: 77, left: 77),
                  onTap: () {
                    Get.back();
                    onTapViewereciept();
                  }),
              CustomButton(
                  height: getVerticalSize(57),
                  text: "lbl_home".tr,
                  margin: getMargin(top: 16, left: 77, right: 77),
                  variant: ButtonVariant.FillPink50,
                  fontStyle: ButtonFontStyle.SFProTextBold18Pink800,
                  onTap: () {
                    onTapHome();
                  })
            ]));
  }

  onTapViewereciept() {
    Get.toNamed(
      AppRoutes.eRecieptScreen,
    );
  }

  onTapHome() {
    Get.toNamed(
      AppRoutes.homePageScreen,
    );
  }
}
