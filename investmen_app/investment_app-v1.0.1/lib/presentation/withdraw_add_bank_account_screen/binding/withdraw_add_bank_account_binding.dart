import '../controller/withdraw_add_bank_account_controller.dart';
import 'package:get/get.dart';

class WithdrawAddBankAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WithdrawAddBankAccountController());
  }
}
