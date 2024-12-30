import '../controller/login_screen_fill_controller.dart';
import 'package:get/get.dart';

class LoginScreenFillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginScreenFillController());
  }
}
