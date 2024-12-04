import '../controller/deposit_select_payment_controller.dart';
import 'package:get/get.dart';

class DepositSelectPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DepositSelectPaymentController());
  }
}
