import '../controller/log_in_with_defualt_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LogInWithDefualtScreen.
///
/// This class ensures that the LogInWithDefualtController is created when the
/// LogInWithDefualtScreen is first loaded.
class LogInWithDefualtBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogInWithDefualtController());
  }
}
