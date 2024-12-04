import '../controller/orientation_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrientationScreen.
///
/// This class ensures that the OrientationController is created when the
/// OrientationScreen is first loaded.
class OrientationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrientationController());
  }
}
