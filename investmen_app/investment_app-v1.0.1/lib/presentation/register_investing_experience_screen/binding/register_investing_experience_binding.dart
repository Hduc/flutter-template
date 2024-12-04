import '../controller/register_investing_experience_controller.dart';
import 'package:get/get.dart';

class RegisterInvestingExperienceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterInvestingExperienceController());
  }
}
