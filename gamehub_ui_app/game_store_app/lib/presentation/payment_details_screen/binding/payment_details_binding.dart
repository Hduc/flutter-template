import '../controller/payment_details_controller.dart';
import 'package:get/get.dart';

class PaymentDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentDetailsController());
  }
}
