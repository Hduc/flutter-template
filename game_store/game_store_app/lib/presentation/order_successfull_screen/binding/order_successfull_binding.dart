import '../controller/order_successfull_controller.dart';
import 'package:get/get.dart';

class OrderSuccessfullBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderSuccessfullController());
  }
}
