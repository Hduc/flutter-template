import '../controller/sign_up_fill_controller.dart';
import 'package:get/get.dart';

class SignUpFillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpFillController());
  }
}
