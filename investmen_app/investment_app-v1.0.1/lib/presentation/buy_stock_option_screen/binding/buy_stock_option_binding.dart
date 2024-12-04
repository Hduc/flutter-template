import '../controller/buy_stock_option_controller.dart';
import 'package:get/get.dart';

class BuyStockOptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BuyStockOptionController());
  }
}
