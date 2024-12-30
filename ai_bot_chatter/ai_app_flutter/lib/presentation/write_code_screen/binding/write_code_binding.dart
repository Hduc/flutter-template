import '../controller/write_code_controller.dart';
import 'package:get/get.dart';

class WriteCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WriteCodeController());
  }
}
