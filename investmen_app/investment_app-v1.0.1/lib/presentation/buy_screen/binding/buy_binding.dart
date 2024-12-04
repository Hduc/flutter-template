import '../controller/buy_controller.dart';
import 'package:get/get.dart';

class BuyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BuyController());
  }
}
