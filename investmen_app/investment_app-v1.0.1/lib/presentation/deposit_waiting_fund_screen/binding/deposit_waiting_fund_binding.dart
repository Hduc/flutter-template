import '../controller/deposit_waiting_fund_controller.dart';
import 'package:get/get.dart';

class DepositWaitingFundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DepositWaitingFundController());
  }
}
