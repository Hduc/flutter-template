import '../controller/forget_password1_controller.dart';
import 'package:get/get.dart';

class ForgetPassword1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgetPassword1Controller());
  }
}
