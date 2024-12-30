import '../controller/security_setting_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SecuritySettingScreen.
///
/// This class ensures that the SecuritySettingController is created when the
/// SecuritySettingScreen is first loaded.
class SecuritySettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecuritySettingController());
  }
}
