import '../controller/personal_controller.dart';
import 'package:get/get.dart';

class PersonalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PersonalController());
  }
}
