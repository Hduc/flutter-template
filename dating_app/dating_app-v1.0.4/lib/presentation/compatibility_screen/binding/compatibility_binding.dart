import '../controller/compatibility_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CompatibilityScreen.
///
/// This class ensures that the CompatibilityController is created when the
/// CompatibilityScreen is first loaded.
class CompatibilityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CompatibilityController());
  }

}
