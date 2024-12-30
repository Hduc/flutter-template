import '../controller/reset_password_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ResetPasswordOneScreen.
///
/// This class ensures that the ResetPasswordOneController is created when the
/// ResetPasswordOneScreen is first loaded.
class ResetPasswordOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPasswordOneController());
  }
}
