import '../controller/gender_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GenderScreen.
///
/// This class ensures that the GenderController is created when the
/// GenderScreen is first loaded.
class GenderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GenderController());
  }
}
