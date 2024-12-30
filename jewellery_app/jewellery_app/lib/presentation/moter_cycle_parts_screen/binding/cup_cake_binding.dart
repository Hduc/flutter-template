import '../controller/textures_screen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CupCakeScreen.
///
/// This class ensures that the MoterCyclePartsScreenController is created when the
/// CupCakeScreen is first loaded.
class LaptopBagBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MoterCyclePartsScreenController());
  }
}
