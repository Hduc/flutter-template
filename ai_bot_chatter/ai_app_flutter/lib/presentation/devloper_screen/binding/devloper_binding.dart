import '../controller/devloper_controller.dart';
import 'package:get/get.dart';

class DevloperBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DevloperController());
  }
}
