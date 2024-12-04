import '../controller/intro_controller.dart';
import 'package:get/get.dart';

/// A binding class for the IntroScreen.
///
/// This class ensures that the IntroController is created when the
/// IntroScreen is first loaded.
class IntroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntroController());
  }
}
