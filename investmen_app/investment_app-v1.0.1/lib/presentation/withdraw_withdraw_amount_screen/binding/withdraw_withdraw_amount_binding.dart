import '../controller/withdraw_withdraw_amount_controller.dart';
import 'package:get/get.dart';

class WithdrawWithdrawAmountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WithdrawWithdrawAmountController());
  }
}
