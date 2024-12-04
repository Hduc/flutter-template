import '../controller/hand_bag_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HandBagScreen.
///
/// This class ensures that the HandBagScreenController is created when the
/// HandBagScreen is first loaded.
class HandBagBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HandBagScreenController());
  }
}
