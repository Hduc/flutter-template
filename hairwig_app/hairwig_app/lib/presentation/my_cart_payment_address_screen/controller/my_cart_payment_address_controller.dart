import 'package:hairwig_app/core/app_export.dart';import 'package:hairwig_app/presentation/my_cart_payment_address_screen/models/my_cart_payment_address_model.dart';/// A controller class for the MyCartPaymentAddressScreen.
///
/// This class manages the state of the MyCartPaymentAddressScreen, including the
/// current myCartPaymentAddressModelObj
class MyCartPaymentAddressController extends GetxController {Rx<MyCartPaymentAddressModel> myCartPaymentAddressModelObj = MyCartPaymentAddressModel().obs;

Rx<bool> flatRate = false.obs;

Rx<bool> freevalue = false.obs;

Rx<bool> localPickup = false.obs;

 }
