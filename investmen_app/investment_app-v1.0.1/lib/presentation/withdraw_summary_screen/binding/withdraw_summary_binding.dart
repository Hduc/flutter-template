import '../controller/withdraw_summary_controller.dart';
import 'package:get/get.dart';

class WithdrawSummaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WithdrawSummaryController());
  }
}
