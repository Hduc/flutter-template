import '../controller/our_pakage_controller.dart';
import 'package:get/get.dart';

class OurPakageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OurPakageController());
  }
}
