import '../controller/splash_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SplashTwoScreen.
///
/// This class ensures that the SplashTwoController is created when the
/// SplashTwoScreen is first loaded.
class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
