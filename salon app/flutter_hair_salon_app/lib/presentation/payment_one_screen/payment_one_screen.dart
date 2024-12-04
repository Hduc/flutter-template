import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

import 'controller/payment_one_controller.dart';
import 'models/payment_one_model.dart';

class PaymentOneScreen extends GetWidget<PaymentOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  onTapArrowleft38();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_payment_methods".tr),
            styleType: Style.bgFillWhiteA700),
        body: controller.paymentMethodsModelObj.isEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgGroup292,
                      height: getVerticalSize(107),
                      width: getHorizontalSize(300)),
                  Padding(
                      padding: getPadding(top: 30),
                      child: Text("lbl_no_payment".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtSFProTextBold22)),
                  Container(
                      margin: getMargin(top: 24, right: 69, left: 69),
                      child: Text("msg_pellentesque_eu".tr,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtBody)),
                  CustomButton(
                      height: getVerticalSize(53),
                      text: "lbl_add_new_card".tr,
                      margin: getMargin(top: 30, left: 97, right: 97),
                      onTap: () {
                        onTapAddnewcard();
                      })
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getVerticalSize(20),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: getPadding(right: 16, left: 16),
                      primary: true,
                      shrinkWrap: false,
                      itemCount: controller.paymentMethodsModelObj.length,
                      itemBuilder: (context, index) {
                        PaymentOneModel paymentMethodsModel =
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
                      },
                    ),
                  ),
                  CustomButton(
                      height: getVerticalSize(53),
                      text: "lbl_add_new_card".tr,
                      margin: getMargin(bottom: 40, left: 16, right: 16),
                      onTap: () {
                        onTapAddnewcard();
                      }),
                ],
              ),
      ),
    );
  }

  onTapAddnewcard() {
    Get.toNamed(
      AppRoutes.paymentScreen,
    );
  }

  onTapArrowleft38() {
    Get.back();
  }
}
