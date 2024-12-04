import '../controller/withdraw_confirm_bank_account_one_controller.dart';
import 'package:get/get.dart';

class WithdrawConfirmBankAccountOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WithdrawConfirmBankAccountOneController());
  }
}
