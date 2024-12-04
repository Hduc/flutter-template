import '../controller/select_specialist_controller.dart';
import 'package:get/get.dart';

class SelectSpecialistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectSpecialistController());
  }
}
