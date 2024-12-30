import 'package:get/get.dart';

/// This class is used in the [payment_method_item_widget] screen.

class PaymentMethodItemModel {
  Rx<String> typeTxt = Rx("Master card");

  Rx<String> numberTxt = Rx("5858 **** **** ****");

  Rx<String>? id = Rx("");
  String? paymentIcon;
  String? methodName;
  String? number;
  PaymentMethodItemModel(this.paymentIcon,this.methodName,this.number);
}
