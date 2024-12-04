import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/presentation/payment_details_screen/models/payment_details_model.dart';
import 'package:flutter/material.dart';

class PaymentDetailsController extends GetxController {
  TextEditingController group502Controller = TextEditingController();

  Rx<PaymentDetailsModel> paymentDetailsModelObj = PaymentDetailsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

}
