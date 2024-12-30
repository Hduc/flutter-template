import '../controller/empty_payment_controller.dart';
import 'package:get/get.dart';

class EmptyPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmptyPaymentController());
  }
}
