import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

import 'controller/payment_methods_controller.dart';
import 'models/payment_methods_model.dart';

class PaymentMethodsScreen extends GetWidget<PaymentMethodsController> {
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
                  onTapArrowleft14();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_payment_methods".tr),
            styleType: Style.bgFillWhiteA700),
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: getVerticalSize(20),
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
            CustomButton(
                height: getVerticalSize(53),
                text: "lbl_continue".tr,
                margin: getMargin(bottom: 74, left: 16, right: 16),
                onTap: () {
                  onTapContinue();
                })
          ]),
        ));
  }

  onTapContinue() {
    Get.toNamed(
      AppRoutes.reviewSummaryScreen,
    );
  }

  onTapArrowleft14() {
    Get.back();
  }
}
