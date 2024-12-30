import '../controller/password_changed_popup_controller.dart';
import 'package:get/get.dart';

class PasswordChangedPopupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordChangedPopupController());
  }
}
