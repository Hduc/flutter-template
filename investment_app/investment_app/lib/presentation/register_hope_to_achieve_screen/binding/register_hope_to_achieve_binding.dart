import '../controller/register_hope_to_achieve_controller.dart';
import 'package:get/get.dart';

class RegisterHopeToAchieveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterHopeToAchieveController());
  }
}
