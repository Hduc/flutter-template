import '../controller/login_fill_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginFillScreen.
///
/// This class ensures that the LoginFillController is created when the
/// LoginFillScreen is first loaded.
class LoginFillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginFillController());
  }
}
