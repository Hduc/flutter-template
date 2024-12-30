import '../controller/register_date_of_birth_controller.dart';
import 'package:get/get.dart';

class RegisterDateOfBirthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterDateOfBirthController());
  }
}
