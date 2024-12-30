import '../controller/login_screen_error_controller.dart';
import 'package:get/get.dart';

class LoginScreenErrorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginScreenErrorController());
  }
}
