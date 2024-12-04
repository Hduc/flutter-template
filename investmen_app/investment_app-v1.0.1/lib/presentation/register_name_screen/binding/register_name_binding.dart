import '../controller/register_name_controller.dart';
import 'package:get/get.dart';

class RegisterNameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterNameController());
  }
}
