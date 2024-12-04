import '../controller/sell_controller.dart';
import 'package:get/get.dart';

class SellBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SellController());
  }
}
