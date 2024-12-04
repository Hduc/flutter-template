import '../controller/confirm_you_cancel_order_and_money_details_controller.dart';
import 'package:get/get.dart';

class ConfirmYouCancelOrderAndMoneyDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmYouCancelOrderAndMoneyDetailsController());
  }
}
