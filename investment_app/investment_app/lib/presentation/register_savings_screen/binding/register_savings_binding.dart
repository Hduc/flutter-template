import '../controller/register_savings_controller.dart';
import 'package:get/get.dart';

class RegisterSavingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterSavingsController());
  }
}
