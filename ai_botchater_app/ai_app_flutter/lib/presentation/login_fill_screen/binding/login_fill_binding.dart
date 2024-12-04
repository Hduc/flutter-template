import '../controller/login_fill_controller.dart';
import 'package:get/get.dart';

class LoginFillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginFillController());
  }
}
