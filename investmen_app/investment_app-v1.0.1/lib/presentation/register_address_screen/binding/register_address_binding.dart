import '../controller/register_address_controller.dart';
import 'package:get/get.dart';

class RegisterAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterAddressController());
  }
}
