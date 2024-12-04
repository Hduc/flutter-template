import '../controller/register_gender_controller.dart';
import 'package:get/get.dart';

class RegisterGenderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterGenderController());
  }
}
