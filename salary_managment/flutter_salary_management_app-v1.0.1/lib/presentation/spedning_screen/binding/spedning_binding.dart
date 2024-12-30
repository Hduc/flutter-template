import '../controller/spedning_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SpedningScreen.
///
/// This class ensures that the SpedningController is created when the
/// SpedningScreen is first loaded.
class SpedningBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpedningController());
  }
}
