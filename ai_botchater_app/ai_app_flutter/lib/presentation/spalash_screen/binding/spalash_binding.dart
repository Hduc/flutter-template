import '../controller/spalash_controller.dart';
import 'package:get/get.dart';

class SpalashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpalashController());
  }
}
