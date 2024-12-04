import '../controller/login_with_error_controller.dart';
import 'package:get/get.dart';

class LoginWithErrorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginWithErrorController());
  }
}
