import '../controller/exchange_controller.dart';
import 'package:get/get.dart';

class ExchangeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExchangeController());
  }
}
