import 'package:colorful_safe_area/colorful_safe_area.dart';


import 'controller/order_confirm_controller.dart';
import 'package:flutter/material.dart';
import 'package:hairwig_app/core/app_export.dart';
import 'package:hairwig_app/widgets/custom_elevated_button.dart';




class OrderConfirmScreen extends StatefulWidget {
  const OrderConfirmScreen({super.key});

  @override
  State<OrderConfirmScreen> createState() => _OrderConfirmScreenState();
}

class _OrderConfirmScreenState extends State<OrderConfirmScreen> {
  OrderConfirmController orderConfirmController = Get.put(OrderConfirmController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: ColorfulSafeArea(
        color: appTheme.white,
        child: Scaffold(
          backgroundColor: theme.colorScheme.onPrimary,

        ),
      ),
    );
  }
}




