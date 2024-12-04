import '../order_successfull_screen/order_successfull_screen.dart';
import '../payment_method_screen/widgets/payment_method_item_widget.dart';
import 'controller/payment_method_controller.dart';
import 'models/payment_method_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_button.dart';

import 'models/payment_method_model.dart';

class PaymentMethodScreen extends GetWidget<PaymentMethodController> {
  static List<PaymentMethodItemModel> paymentOption =  PaymentMethodModel.getPaymentMethod();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PaymentMethodController>(
      init: PaymentMethodController(),
      builder:(controller) =>  WillPopScope(
        onWillPop: ()async{
          controller.setNavigationOfProfileScreen(false);
          Get.back();
          return true;
        },
        child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(66),
                  leadingWidth: 44,
                  leading: AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleftBlack900,
                      margin: getMargin(left: 20, top: 17, bottom: 25),
                      onTap: () {
                        controller.setNavigationOfProfileScreen(false);
                        onTapArrowleft15();
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_payment_method".tr),
                  styleType: Style.bgFillWhiteA700),
              body: SafeArea(
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 20, top: 24, right: 20, bottom: 24),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: paymentOption.length,
                              itemBuilder: (context, index) {
                                PaymentMethodItemModel model = paymentOption[index];
                                return PaymentMethodItemWidget(model);
                              }),
                          CustomButton(
                              height: getVerticalSize(40),
                              width: getHorizontalSize(172),
                              text: "lbl_add_new_card".tr,
                              margin: getMargin(top: 16, bottom: 5),
                              variant: ButtonVariant.OutlineLightblueA700,
                              padding: ButtonPadding.PaddingAll13,
                              fontStyle: ButtonFontStyle.AeonikBold14LightblueA700,
                              onTap: () {
                                onTapAddnewcard();
                              })
                        ])),
              ),
              bottomNavigationBar: controller.navOfProfileScreen?SizedBox():Container(
                  margin: getMargin(left: 20, right: 20, bottom: 40),
                  decoration: AppDecoration.white,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomButton(
                            height: getVerticalSize(56),
                            text: "lbl_pay_now".tr,
                            onTap: () {
                              onTapPaynow(context);
                            })
                      ]))),
        ),
    );
  }

  onTapAddnewcard() {
    Get.toNamed(
      AppRoutes.addNewCardScreen,
    );
  }

  onTapPaynow(context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          insetPadding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding:
          EdgeInsets.zero,
          content: OrderSuccessfullScreen(),
        );
      },
    );

    // Get.toNamed(
    //   AppRoutes.orderSuccessfullScreen,
    // );
  }

  onTapArrowleft15() {
    Get.back();
  }
}
