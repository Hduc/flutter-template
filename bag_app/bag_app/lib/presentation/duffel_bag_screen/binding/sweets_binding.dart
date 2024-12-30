import '../controller/sweets_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DuffelBagScreen.
///
/// This class ensures that the DuffelBagController is created when the
/// DuffelBagScreen is first loaded.
class DuffelBagBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DuffelBagController());
  }
}
