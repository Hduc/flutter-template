import 'package:jewellery_app/core/app_export.dart';

import 'package:jewellery_app/widgets/app_bar/appbar_title.dart';
import 'package:jewellery_app/widgets/app_bar/custom_app_bar.dart';
import 'package:jewellery_app/widgets/custom_elevated_button.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';


import 'controller/payment_controller.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  PaymentController paymentController = Get.put(PaymentController());


  // MyCartOneController myCartOneController = Get.put(MyCartOneController());

  var items = [
    "Edit",
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return true;
      },
      child: ColorfulSafeArea(
          color: appTheme.white,
          child: Scaffold(
              appBar: CustomAppBar(
                  height: getVerticalSize(81),
                  leadingWidth: 42,
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_payment".tr),
                  styleType: Style.bgFillWhiteA700),
              backgroundColor: appTheme.gray10002,

              bottomNavigationBar: CustomElevatedButton(
                  height: getVerticalSize(56),
                  text: "lbl_confirm_payment".tr,
                  margin: getMargin(left: 20, right: 12, bottom: 24),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryBold,
                  onTap: () {
                    onTapConfirmpayment();
                  }))),
    );
  }

  onTapConfirmpayment() {
    Get.toNamed(
      AppRoutes.orderConfirmScreen,
    );
  }

  onTapAddnewaddress() {
    Get.toNamed(
      AppRoutes.addNewAddressScreen,
    );
  }
}
