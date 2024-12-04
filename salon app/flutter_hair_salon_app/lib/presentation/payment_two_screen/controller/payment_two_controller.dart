import 'package:hair_salon_app/core/app_export.dart';import 'package:hair_salon_app/presentation/payment_two_screen/models/payment_two_model.dart';import 'package:flutter/material.dart';class PaymentTwoController extends GetxController {TextEditingController cardnumberController = TextEditingController();

TextEditingController expdateoneController = TextEditingController();

TextEditingController cvvoneController = TextEditingController();

Rx<PaymentTwoModel> paymentTwoModelObj = PaymentTwoModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); cardnumberController.dispose(); expdateoneController.dispose(); cvvoneController.dispose(); } 
 }
