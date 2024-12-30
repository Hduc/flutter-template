import '../controller/withdraw_confirm_bank_account_controller.dart';
import 'package:get/get.dart';

class WithdrawConfirmBankAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WithdrawConfirmBankAccountController());
  }
}
