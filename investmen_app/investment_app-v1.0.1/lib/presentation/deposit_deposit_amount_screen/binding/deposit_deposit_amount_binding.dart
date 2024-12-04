import '../controller/deposit_deposit_amount_controller.dart';
import 'package:get/get.dart';

class DepositDepositAmountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DepositDepositAmountController());
  }
}
