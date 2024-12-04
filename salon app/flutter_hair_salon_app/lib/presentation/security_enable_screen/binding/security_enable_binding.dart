import '../controller/security_enable_controller.dart';
import 'package:get/get.dart';

class SecurityEnableBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecurityEnableController());
  }
}
