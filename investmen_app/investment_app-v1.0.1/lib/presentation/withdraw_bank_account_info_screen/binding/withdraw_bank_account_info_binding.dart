import '../controller/withdraw_bank_account_info_controller.dart';
import 'package:get/get.dart';

class WithdrawBankAccountInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WithdrawBankAccountInfoController());
  }
}
