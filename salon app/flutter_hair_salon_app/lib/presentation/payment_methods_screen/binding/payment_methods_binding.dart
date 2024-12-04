import '../controller/payment_methods_controller.dart';
import 'package:get/get.dart';

class PaymentMethodsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentMethodsController());
  }
}
