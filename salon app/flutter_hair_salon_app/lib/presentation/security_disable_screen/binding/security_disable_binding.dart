import '../controller/security_disable_controller.dart';
import 'package:get/get.dart';

class SecurityDisableBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecurityDisableController());
  }
}
