import '../controller/apology_controller.dart';
import 'package:get/get.dart';

class ApologyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApologyController());
  }
}
