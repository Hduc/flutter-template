import '../controller/intrest_controller.dart';
import 'package:get/get.dart';

/// A binding class for the IntrestScreen.
///
/// This class ensures that the IntrestController is created when the
/// IntrestScreen is first loaded.
class IntrestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntrestController());
  }
}
