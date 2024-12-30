import 'package:hair_salon_app/presentation/confirm_you_cancel_order_and_money_details_screen/confirm_you_cancel_order_and_money_details_screen.dart';

import '../payment_methods_screen/models/payment_methods_model.dart';
import 'controller/cancel_booking_payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';
// ignore: unused_import
import 'package:hair_salon_app/widgets/custom_icon_button.dart';

class CancelBookingPaymentScreen
    extends GetWidget<CancelBookingPaymentController> {
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
                  onTapArrowleft18();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_cancel_booking".tr),
            styleType: Style.bgFillWhiteA700),
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: getVerticalSize(6),
            ),
            Expanded(
              child: ListView.builder(
                padding: getPadding(right: 16, left: 16),
                primary: true,
                shrinkWrap: false,
                itemCount: controller.paymentMethodsModelObj.length + 1,
                itemBuilder: (context, index) {
                  if (index != controller.paymentMethodsModelObj.length) {
                    PaymentMethodsModel paymentMethodsModel =
                        controller.paymentMethodsModelObj[index];
                    return GestureDetector(
                      onTap: () {
                        controller.selectedIndex.value = index;
                      },
                      child: Container(
                          margin: getMarginOrPadding(bottom: 24),
                          padding: getPadding(top: 24, bottom: 24),
                          decoration: AppDecoration.white.copyWith(
                              borderRadius:
                                  BorderRadiusStyle.roundedBorder16),
                          child: Row(children: [
                            CustomImageView(
                              svgPath: paymentMethodsModel.image,
                              height: getVerticalSize(32),
                              width: getVerticalSize(32),
                            ),
                            SizedBox(
                              width: getVerticalSize(19),
                            ),
                            Text(paymentMethodsModel.name,
                                style: AppStyle.txtHeadline),
                            Spacer(),
                            Obx(
                              () => CustomImageView(
                                svgPath:
                                    controller.selectedIndex.value == index
                                        ? ImageConstant.imgClock
                                        : ImageConstant.imgIcradiobutton,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                              ),
                            ),
                          ])),
                    );
                  } else {
                    return CustomButton(
                        onTap: () {
                          Get.toNamed(AppRoutes.paymentScreen);
                        },
                        height: getVerticalSize(53),
                        text: "lbl_add_new_card".tr,
                        margin: getMargin(top: 6),
                        variant: ButtonVariant.FillPink50,
                        fontStyle: ButtonFontStyle.SFProTextBold18Pink800);
                  }
                },
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("lbl_paid_16_00".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtBody),
              Padding(
                  padding: getPadding(left: 30),
                  child: Text("lbl_refund_14_40".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtHeadline))
            ]),
            CustomButton(
                height: getVerticalSize(53),
                text: "lbl_continue".tr,
                margin: getMargin(top: 24, bottom: 74, right: 16, left: 16),
                onTap: () {
                  onTapContinue();
                })
          ]),
        ));
  }

  onTapContinue() {
    // Get.toNamed(
    //   AppRoutes.confirmYouCancelOrderAndMoneyDetailsScreen,
    // );
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.only(left: 0),
      content: ConfirmYouCancelOrderAndMoneyDetailsScreen(),
    ));
  }

  onTapArrowleft18() {
    Get.back();
  }
}
