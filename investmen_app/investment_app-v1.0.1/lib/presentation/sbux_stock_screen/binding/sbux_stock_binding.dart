import '../controller/sbux_stock_controller.dart';
import 'package:get/get.dart';

class SbuxStockBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SbuxStockController());
  }
}
