import 'package:dating_app/core/app_export.dart';import 'package:dating_app/presentation/payment_method_screen/models/payment_method_model.dart';
import 'package:flutter/cupertino.dart';/// A controller class for the PaymentMethodScreen.
///
/// This class manages the state of the PaymentMethodScreen, including the
/// current paymentMethodModelObj
class PaymentMethodController extends GetxController {Rx<PaymentMethodModel> paymentMethodModelObj = PaymentMethodModel().obs;

RxInt card = 1.obs;

selectCard(int values){
  card.value = values;
  debugPrint('Card is ---->${card.value}');
}


@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

 }
