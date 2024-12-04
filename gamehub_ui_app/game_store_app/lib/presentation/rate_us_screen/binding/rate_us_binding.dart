import '../controller/rate_us_controller.dart';
import 'package:get/get.dart';

class RateUsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RateUsController());
  }
}
