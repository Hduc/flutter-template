import '../controller/withdraw_select_account_controller.dart';
import 'package:get/get.dart';

class WithdrawSelectAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WithdrawSelectAccountController());
  }
}
