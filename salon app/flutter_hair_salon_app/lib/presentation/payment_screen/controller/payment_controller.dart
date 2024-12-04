import 'package:hair_salon_app/core/app_export.dart';import 'package:hair_salon_app/presentation/payment_screen/models/payment_model.dart';import 'package:flutter/material.dart';class PaymentController extends GetxController {TextEditingController cardnumbervalueController = TextEditingController();

TextEditingController expdateformatController = TextEditingController();

TextEditingController cvvvalueController = TextEditingController();

Rx<PaymentModel> paymentModelObj = PaymentModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); cardnumbervalueController.dispose(); expdateformatController.dispose(); cvvvalueController.dispose(); } 
 }
