import 'package:game_store_app/core/app_export.dart';
import 'package:get/get.dart';
import 'payment_method_item_model.dart';

/// This class defines the variables used in the [payment_method_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentMethodModel {
  // Rx<List<PaymentMethodItemModel>> paymentMethodItemList =
  //     Rx(List.generate(4, (index) => PaymentMethodItemModel()));
 static List<PaymentMethodItemModel> getPaymentMethod(){
  return [
   PaymentMethodItemModel(ImageConstant.imgMasterCard,"Master card","5858 **** **** ****"),
   PaymentMethodItemModel(ImageConstant.imgPaypal,"Paypal","9025 **** **** ****"),
   PaymentMethodItemModel(ImageConstant.imgGooglePay,"Google pay","5678 **** **** ****"),
   PaymentMethodItemModel(ImageConstant.imgPaytm,"Paytm","1234 **** **** ****"),
  ];
 }
}
