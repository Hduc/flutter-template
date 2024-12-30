import '../controller/register_set_pin_controller.dart';
import 'package:get/get.dart';

class RegisterSetPinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterSetPinController());
  }
}
