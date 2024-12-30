import '../controller/about_us_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AboutUsOneScreen.
///
/// This class ensures that the AboutUsOneController is created when the
/// AboutUsOneScreen is first loaded.
class AboutUsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AboutUsOneController());
  }
}
